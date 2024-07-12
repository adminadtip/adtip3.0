import 'package:flutter/widgets.dart';

extension ContextExt on BuildContext {
  void unfocus() => FocusScope.of(this).unfocus();

  void focus(FocusNode? node) => FocusScope.of(this).requestFocus(node);

  bool get isKeyboardOpened => MediaQuery.of(this).viewInsets.bottom > 100;
  Widget keyboardPadding({double height = 100}) =>
      isKeyboardOpened ? SizedBox(height: height) : SizedBox.shrink();
}
