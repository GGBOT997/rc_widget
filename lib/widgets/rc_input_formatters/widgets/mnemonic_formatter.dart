/*
* @overview: 助记词限制
* @Author: rcc 
* @Date: 2022-10-08 15:01:41 
*/

import 'package:flutter/services.dart';

class MnemonicFormatter extends TextInputFormatter {
  MnemonicFormatter();

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String value = newValue.text;
    int selectionIndex = newValue.selection.end;

    if (value == ' ') {
      value = '';
      selectionIndex = oldValue.selection.end;
    } else if (value.contains('  ')) {
      value = oldValue.text;
      selectionIndex = oldValue.selection.end;
    }

    return TextEditingValue(
      text: value,
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}
