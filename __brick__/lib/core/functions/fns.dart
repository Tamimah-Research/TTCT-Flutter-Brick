import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../main.dart';

/// Close Keyboard
void closeKeyboard() {
  FocusManager.instance.primaryFocus?.unfocus();
}

/// Quits Application
void quitApp() {
  if (Platform.isIOS) {
    try {
      exit(0);
    } catch (e) {
      logger.i(e);
    }
  } else {
    try {
      SystemNavigator.pop(); // sometimes it cant exit app
    } catch (e) {
      exit(0);
    }
  }
}
