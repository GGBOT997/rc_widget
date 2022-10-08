/*
* @overview: 输入限制
* @Author: rcc 
* @Date: 2022-09-29 14:52:00 
*/

import 'package:flutter/services.dart';

import 'widgets/decimal_formatter.dart';
import 'widgets/mnemonic_formatter.dart';

class RcInputFormatters {
  RcInputFormatters._();

  /// 基础
  /// 数字+字母
  static final List<TextInputFormatter> base = [
    FilteringTextInputFormatter.allow(RegExp('[0-9a-zA-Z]')),
  ];

  /// 数字
  static final List<TextInputFormatter> integer = [
    FilteringTextInputFormatter.allow(RegExp('[0-9]')),
  ];

  /// 小数(8位)
  static final List<TextInputFormatter> decimal8 = [
    FilteringTextInputFormatter.allow(RegExp('[0-9.]')),
    DecimalFormatter(),
  ];

  /// 助记词
  static final List<TextInputFormatter> mnemonic = [
    FilteringTextInputFormatter.allow(RegExp('[a-zA-Z ]')),
    MnemonicFormatter(),
  ];

  /// 非中文
  static final List<TextInputFormatter> notChinese = [
    FilteringTextInputFormatter.allow(RegExp('[^\u4E00-\u9FA5\uF900-\uFA2D\u0020]')),
  ];
}

class RcKeyboardType {
  static const decimal = TextInputType.numberWithOptions(decimal: true);
}
