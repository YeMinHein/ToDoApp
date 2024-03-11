import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
  final void Function()? onTap;
  final double height;
  final double width;
  final Icon icon;
  const ThemeButton({
    super.key,
    required this.onTap,
    required this.height,
    required this.width,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        margin: EdgeInsets.only(
          right: 30,
        ),
        child: Center(
          child: icon,
        ),
      ),
    );
  }
}
