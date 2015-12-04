// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library pub_semver.src.version_union;

import 'package:collection/collection.dart';

import 'utils.dart';
import 'version.dart';
import 'version_constraint.dart';
import 'version_range.dart';

/// A (package-private) version constraint representing a union of multiple
/// disjoint version constraints.
///
/// An instance of this will only be created if the version can't be represented
/// as a non-compound value.
class VersionUnion implements VersionConstraint {
  /// The constraints that compose this union.
  ///
  /// This list has two invariants:
  ///
  /// * Its contents are sorted from lowest to highest matched versions.
  /// * Its contents are disjoint and non-adjacent. In other words, for any two
  ///   constraints next to each other in the list, there's some version between
  ///   those constraints that they don't match.
  final List<VersionRange> constraints;

  bool get isEmpty => false;

  bool get isAny => false;

  /// Returns the union of [constraints].
  ///
  /// This ensures that an actual [VersionUnion] is only returned if necessary.
  /// It also takes care of sorting and merging the constraints to ensure that
  /// they're disjoint.
  static VersionConstraint create(Iterable<VersionConstraint> constraints) {
    var flattened = constraints.expand((constraint) {
      if (constraint.isEmpty) return [];
      if (constraint is VersionUnion) return constraint.constraints;
      return [constraint];
    }).toList();

    if (flattened.isEmpty) return VersionConstraint.empty;

    if (flattened.any((constraint) => constraint.isAny)) {
      return VersionConstraint.any;
    }

    // Only allow Versions and VersionRanges here so we can more easily reason
    // about everything in [flattened]. _EmptyVersions and VersionUnions are
    // filtered out above.
    for (var constraint in flattened) {
      if (constraint is VersionRange) continue;
      throw new ArgumentError('Unknown VersionConstraint type $constraint.');
    }

    (flattened as List).sort(compareMax);

    var merged = <VersionRange>[];
    for (var constraint in flattened) {
      // Merge this constraint with the previous one, but only if they touch.
      if (merged.isEmpty ||
          (!merged.last.allowsAny(constraint) &&
              !areAdjacent(merged.last, constraint))) {
        merged.add(constraint);
      } else {
        merged[merged.length - 1] = merged.last.union(constraint);
      }
    }

    if (merged.length == 1) return merged.single;
    return new VersionUnion._(merged);
  }

  VersionUnion._(this.constraints);

  bool allows(Version version) =>
      constraints.any((constraint) => constraint.allows(version));

  bool allowsAll(VersionConstraint other) {
    var ourConstraints = constraints.iterator;
    var theirConstraints = _constraintsFor(other).iterator;

    // Because both lists of constraints are ordered by minimum version, we can
    // safely move through them linearly here.
    ourConstraints.moveNext();
    theirConstraints.moveNext();
    while (ourConstraints.current != null && theirConstraints.current != null) {
      if (ourConstraints.current.allowsAll(theirConstraints.current)) {
        theirConstraints.moveNext();
      } else {
        ourConstraints.moveNext();
      }
    }

    // If our constraints have allowed all of their constraints, we'll have
    // consumed all of them.
    return theirConstraints.current == null;
  }

  bool allowsAny(VersionConstraint other) {
    var ourConstraints = constraints.iterator;
    var theirConstraints = _constraintsFor(other).iterator;

    // Because both lists of constraints are ordered by minimum version, we can
    // safely move through them linearly here.
    ourConstraints.moveNext();
    theirConstraints.moveNext();
    while (ourConstraints.current != null && theirConstraints.current != null) {
      if (ourConstraints.current.allowsAny(theirConstraints.current)) {
        return true;
      }

      // Move the constraint with the higher max value forward. This ensures
      // that we keep both lists in sync as much as possible.
      if (compareMax(ourConstraints.current, theirConstraints.current) < 0) {
        ourConstraints.moveNext();
      } else {
        theirConstraints.moveNext();
      }
    }

    return false;
  }

  VersionConstraint intersect(VersionConstraint other) {
    var ourConstraints = constraints.iterator;
    var theirConstraints = _constraintsFor(other).iterator;

    // Because both lists of constraints are ordered by minimum version, we can
    // safely move through them linearly here.
    var newConstraints = <VersionRange>[];
    ourConstraints.moveNext();
    theirConstraints.moveNext();
    while (ourConstraints.current != null && theirConstraints.current != null) {
      var intersection = ourConstraints.current
          .intersect(theirConstraints.current);

      if (!intersection.isEmpty) newConstraints.add(intersection);

      // Move the constraint with the higher max value forward. This ensures
      // that we keep both lists in sync as much as possible, and that large
      // constraints have a chance to match multiple small constraints that they
      // contain.
      if (compareMax(ourConstraints.current, theirConstraints.current) < 0) {
        ourConstraints.moveNext();
      } else {
        theirConstraints.moveNext();
      }
    }

    if (newConstraints.isEmpty) return VersionConstraint.empty;
    if (newConstraints.length == 1) return newConstraints.single;

    return new VersionUnion._(newConstraints);
  }

  /// Returns [constraint] as a list of constraints.
  ///
  /// This is used to normalize constraints of various types.
  List<VersionRange> _constraintsFor(VersionConstraint constraint) {
    if (constraint.isEmpty) return [];
    if (constraint is VersionUnion) return constraint.constraints;
    if (constraint is VersionRange) return [constraint];
    throw new ArgumentError('Unknown VersionConstraint type $constraint.');
  }

  VersionConstraint union(VersionConstraint other) =>
      new VersionConstraint.unionOf([this, other]);

  bool operator ==(other) {
    if (other is! VersionUnion) return false;
    return const ListEquality().equals(constraints, other.constraints);
  }

  int get hashCode => const ListEquality().hash(constraints);

  String toString() => constraints.join(" or ");
}
