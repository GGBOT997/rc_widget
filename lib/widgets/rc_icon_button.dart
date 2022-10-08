/*
* @overview: Icon按钮
* @Author: rcc 
* @Date: 2022-06-07 17:03:28 
*/

import 'package:flutter/material.dart';

class RcIconButton extends StatelessWidget {
  const RcIconButton({
    Key? key,
    this.icon,
    this.size,
    this.color,
    this.onTap,
    this.iconSize,
  }) : super(key: key);

  final Color? color;
  final double? size;
  final IconData? icon;
  final double? iconSize;
  final void Function()? onTap;

  double? get splashRadius => size != null ? size! / 2 : null;

  BoxConstraints? get constraints => size != null ? BoxConstraints.tight(Size.square(size!)) : null;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: IconButton(
        onPressed: onTap,
        constraints: constraints,
        padding: EdgeInsets.zero,
        splashRadius: splashRadius,
        icon: Icon(
          icon,
          color: color,
          size: iconSize,
        ),
      ),
    );
  }
}
