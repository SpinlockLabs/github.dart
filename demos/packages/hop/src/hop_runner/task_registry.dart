part of hop.runner;

class TaskRegistry {

  // There could be cases (testing, perhaps?) where a single task is added to
  // many registries. So we're keeping the expando per-instance, instead of
  // static
  final Expando<_TaskMetadata> _metadata =
      new Expando<_TaskMetadata>('metadata');

  final SplayTreeMap<String, Task> _tasks;
  final Map<String, Task> tasks;

  String _helpTaskName;
  bool _frozen = false;

  factory TaskRegistry() =>
      new TaskRegistry._(new SplayTreeMap<String, Task>());

  TaskRegistry._(SplayTreeMap<String, Task> map)
      : this._tasks = map,
        this.tasks = new UnmodifiableMapView(map);

  bool get isFrozen => _frozen;

  /// [task] can be either an instance of [Task] or a [Function].
  ///
  /// If [task] is a [Function], it must take one argument: [TaskContext].
  ///
  /// If a [Future] is returned from the [task] [Function], the runner will wait
  /// for the [Future] to complete.
  ///
  /// If [description] is provided and [task] is an instance of [Task], then
  /// [task] will be cloned and given the provided [description].
  Task addTask(String name, dynamic task, {String description,
    List<String> dependencies} ) {

    require(!isFrozen, "Cannot add a task. Frozen.");
    validateTaskName(name);
    requireArgument(!_tasks.containsKey(name), 'task',
        'A task with name ${name} already exists');

    requireArgumentNotNull(task, 'task');

    if (dependencies == null) dependencies = [];

    var list = $(dependencies)
        .map((String subName) {
          var task = _tasks[subName];
          require(task != null, 'The task "$subName" has not be registered');
          return task;
        });

    var set = new LinkedHashSet<Task>.identity()
        ..addAll(list);

    if (task is Task) {
      task = task.clone(description: description);
    } else {
      // wrap it?
      task = new Task(task, description: description);
    }

    assert(_metadata[task] == null);
    _metadata[task] = new _TaskMetadata(name, set);

    _tasks[name] = task;
    return task;
  }

  /// The keys in the returned [Map] are in dependency order, with the [Task]
  /// for the provided [taskName] occurring last.
  Map<String, Task> getTaskWithDependencies(String taskName) {
    requireArgument(tasks.containsKey(taskName), 'taskName',
        'No task with name: $taskName');

    var depMap = _getDependencyMap(taskName);

    var sorted = topologicalSort(depMap);

    var deps = new LinkedHashMap();

    for (var t in sorted) {
      var name = _metadata[t].name;
      assert(!deps.containsKey(name));
      deps[name] = t;
    }

    assert(deps.keys.last == taskName);

    return deps;
  }

  Task addChainedTask(String name, Iterable<String> existingTaskNames,
                             {String description}) {

    if (description == null) {
      description = 'Chained Task: ' + existingTaskNames.join(', ');
    }

    return addTask(name, _noopTask, description: description,
        dependencies: existingTaskNames);
  }

  HashMap<Task, List<Task>> _getDependencyMap(String taskName) {
    assert(tasks.containsKey(taskName));

    var visited = new Set<Task>.identity();
    var remaining = new Set<Task>.identity();

    var depMap = new LinkedHashMap.identity();

    remaining.add(tasks[taskName]);

    while (remaining.isNotEmpty) {
      var task = remaining.first;
      var added = visited.add(task);
      assert(added); // should never visit the same task twice
      remaining.remove(task);

      Set<Task> deps = depMap[task] = _metadata[task].dependencies;
      remaining.addAll(deps.where((t) => !visited.contains(t)));
    }

    return depMap;
  }

  void _requireFrozen() {
    if (!isFrozen) {
      throw new StateError("Operation not allowed unless frozen.");
    }
  }

  void _freeze() {
    if (!isFrozen) {
      _frozen = true;
    }
  }

  static void _noopTask(TaskContext ctx) {}
}

class _TaskMetadata {
  final LinkedHashSet<Task> dependencies;
  final String name;

  _TaskMetadata(this.name, this.dependencies);
}
