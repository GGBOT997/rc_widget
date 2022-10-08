/*
* @overview: 手势组件
* @Author: rcc 
* @Date: 2022-05-10 22:26:49 
*/

import 'package:flutter/material.dart';

class RcGestureDetector extends StatelessWidget {
  const RcGestureDetector({
    Key? key,
    this.onTap,
    this.child,
    this.onDoubleTap,
  }) : super(key: key);

  final Widget? child;
  final void Function()? onTap;
  final void Function()? onDoubleTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      behavior: HitTestBehavior.translucent,
      child: child,
    );
  }
}
