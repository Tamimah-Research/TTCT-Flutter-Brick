import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  /// Accessing theme
  ThemeData get theme => Theme.of(this);

  /// Accessing media query
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// Accessing screen size
  Size get screenSize => MediaQuery.sizeOf(this);

  /// Accessing Datetime
  DateTime get now => DateTime.now();

  ///Close Keyboard
  void closeKeyboard() => focusScope.requestFocus(FocusNode());

  _Form get form => _Form(this);

  _FocusScope get focusScope => _FocusScope(this);
}

class _Form {
  _Form(this._context);

  final BuildContext _context;

  bool validate() => Form.of(_context).validate();

  void reset() => Form.of(_context).reset();

  void save() => Form.of(_context).save();
}

class _FocusScope {
  const _FocusScope(this._context);

  final BuildContext _context;

  FocusScopeNode _node() => FocusScope.of(_context);

  bool get hasFocus => _node().hasFocus;

  bool get isFirstFocus => _node().isFirstFocus;

  bool get hasPrimaryFocus => _node().hasPrimaryFocus;

  bool get canRequestFocus => _node().canRequestFocus;

  void nextFocus() => _node().nextFocus();

  void requestFocus([FocusNode? node]) => _node().requestFocus(node);

  void previousFocus() => _node().previousFocus();

  void unFocus({UnfocusDisposition disposition = UnfocusDisposition.scope}) => _node().unfocus(disposition: disposition);

  void setFirstFocus(FocusScopeNode scope) => _node().setFirstFocus(scope);

  bool consumeKeyboardToken() => _node().consumeKeyboardToken();
}
