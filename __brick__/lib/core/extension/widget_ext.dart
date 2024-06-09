import 'package:flutter/material.dart';

extension WidgetExtension on Widget? {
  Widget orElse(Widget alternative) {
    return this ?? alternative;
  }

  bool get isNotNull => this != null;

  bool get isNull => this == null;

  Widget? when(bool condition, Widget? Function(Widget?) builder) {
    return condition ? builder(this) : this;
  }
}
