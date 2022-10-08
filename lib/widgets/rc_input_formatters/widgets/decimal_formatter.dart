/*
* @overview: 小数限制
* @Author: rcc 
* @Date: 2022-10-08 15:03:04 
*/

import 'package:flutter/services.dart';

class DecimalFormatter extends TextInputFormatter {
  DecimalFormatter({
    this.integer = 9,
    this.decimal = 8,
  });

  final int integer;
  final int decimal;

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    String text = newValue.text;
    int offset = newValue.selection.end;

    final List<String> texts = text.split('.');

    /// 多个点
    final bool isMultiplePoints = texts.length > 2;

    /// 多个零开头
    final bool isMultipleZeros = RegExp(r'^0[\d*]+$').hasMatch(text);

    /// 整数超长
    final bool isIntegerExcess = texts.first.length > integer;

    /// 小数超长
    final bool isDecimalExcess = texts.length == 2 && texts.last.length > decimal;

    if (text == '.') {
      text = '0.';
      offset++;
    } else if (isMultipleZeros || isMultiplePoints || isIntegerExcess || isDecimalExcess) {
      text = oldValue.text;
      offset = oldValue.selection.end;
    }

    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: offset),
    );
  }
}
