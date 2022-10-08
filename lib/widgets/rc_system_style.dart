/*
* @overview: 状态栏样式
* @Author: rcc 
* @Date: 2022-04-24 21:42:03 
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RcSystemStyle extends StatelessWidget {
  const RcSystemStyle({
    Key? key,
    required this.child,
    this.systemOverlayStyle,
    this.sized = true,
  }) : super(key: key);

  final bool sized;
  final Widget child;
  final SystemUiOverlayStyle? systemOverlayStyle;

  SystemUiOverlayStyle get value {
    const defaultStyle = SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.black,
    );

    return systemOverlayStyle ?? defaultStyle;
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: value,
      child: child,
      sized: sized,
    );
  }
}
