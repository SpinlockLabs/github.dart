import 'package:github/github.dart';

void main() {
  final github = GitHub();

  final poller = github.activity.pollPublicEvents();

  poller.start().listen((event) {
    print('New Event:');
    print('- Payload: ${event.payload}');
  }).onDone(github.dispose);
}
