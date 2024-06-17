import 'package:flutter/material.dart';

/// Allows to insert a separator between the items of the iterable.
extension SeparatedIterable on Iterable<Widget> {
  /// Allows to insert a [separator] between the items of the iterable.
  List<Widget> separatedBy(Widget separator) {
    final result = <Widget>[];
    final iterator = this.iterator;
    if (iterator.moveNext()) {
      result.add(iterator.current);
      while (iterator.moveNext()) {
        result
          ..add(separator)
          ..add(iterator.current);
      }
    }
    return result;
  }
}


/// Provides conversions from [num] to [Duration]
extension DurationExt on num {
  /// Converts the number into a [Duration] in microseconds
  Duration get microseconds => Duration(microseconds: round());

  /// Converts the number into a [Duration] in milliseconds
  Duration get milliseconds => Duration(milliseconds: round());

  /// Converts the number into a [Duration] in seconds
  Duration get seconds => Duration(seconds: round());

  /// Converts the number into a [Duration] in minutes
  Duration get minutes => Duration(minutes: round());

  /// Converts the number into a [Duration] in hours
  Duration get hours => Duration(hours: round());

  /// Converts the number into a [Duration] in days
  Duration get days => Duration(days: round());

  /// Converts the number into a [Duration] in months
  Duration get months => Duration(days: 30 * round());

  /// Converts the number into a [Duration] in quarters
  Duration get quarters => Duration(days: 90 * round());

  /// Converts the number into a [Duration] in quadrimesters
  Duration get quadrimesters => Duration(days: 120 * round());

  /// Converts the number into a [Duration] in years
  Duration get years => Duration(days: 365 * round());
}
