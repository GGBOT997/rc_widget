/*
* @overview: 文字按钮组件
* @Author: rcc 
* @Date: 2022-05-10 22:23:03 
*/

import 'package:flutter/material.dart';
import 'package:rc_widget/widgets/rc_ink_well.dart';

class RcTextButton extends StatelessWidget {
  const RcTextButton({
    Key? key,
    required this.text,
    this.onTap,
    this.style,
    this.borderRadius,
    this.padding = EdgeInsets.zero,
  }) : super(key: key);

  final String text;
  final TextStyle? style;
  final void Function()? onTap;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return RcInkWell(
      onTap: onTap,
      borderRadius: borderRadius ?? BorderRadius.circular(4),
      child: Padding(
        padding: padding,
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
