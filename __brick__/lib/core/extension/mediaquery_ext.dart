import 'package:flutter/material.dart';

extension MediaQueryX on BuildContext {
  // Get the screen size (width and height)
  Size get screenSize => MediaQuery.of(this).size;

  // Get the screen width
  double get screenWidth => screenSize.width;

  // Get the screen height
  double get screenHeight => screenSize.height;

  // Get the device pixel ratio
  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;

  // Get the text scale factor
  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;

  // Get the view insets (e.g., status bar, notch, etc.)
  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;

  // Get the view padding (e.g., safe areas around the screen)
  EdgeInsets get viewPadding => MediaQuery.of(this).viewPadding;

  // Get the padding for the safe area
  EdgeInsets get padding => MediaQuery.of(this).padding;

  // Check if the device is in landscape mode
  bool get isLandscape => screenSize.width > screenSize.height;

  // Check if the device is in portrait mode
  bool get isPortrait => screenSize.height > screenSize.width;

  // Get the orientation of the device
  Orientation get orientation => MediaQuery.of(this).orientation;

  // Check if the device is in dark mode
  bool get isDarkMode => MediaQuery.of(this).platformBrightness == Brightness.dark;
}
