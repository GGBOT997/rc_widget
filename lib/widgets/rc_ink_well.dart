/*
* @overview: 水波纹组件
* @Author: rcc 
* @Date: 2022-05-10 22:18:07 
*/

import 'package:flutter/material.dart';

class RcInkWell extends StatelessWidget {
  const RcInkWell({
    Key? key,
    this.onTap,
    this.child,
    this.splashColor,
    this.highlightColor,
    this.borderRadius,
  }) : super(key: key);

  final Widget? child;
  final Color? splashColor;
  final Color? highlightColor;
  final void Function()? onTap;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onTap,
        child: child,
        splashColor: splashColor,
        borderRadius: borderRadius,
        highlightColor: highlightColor,
      ),
    );
  }
}
