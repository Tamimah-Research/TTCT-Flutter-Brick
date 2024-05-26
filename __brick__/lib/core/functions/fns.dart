import 'package:flutter/material.dart';

/// Close Keyboard
void closeKeyboard() {
  FocusManager.instance.primaryFocus?.unfocus();
}
