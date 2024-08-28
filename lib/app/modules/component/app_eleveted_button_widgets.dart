import 'package:flutter/material.dart';

class AppElevetedButtonWidgets extends StatelessWidget {
  const AppElevetedButtonWidgets({
    super.key,
    this.onPressed,
    this.child,
    this.backgroundColor,
    this.side,
    required this.borderRadius,
  });

  final void Function()? onPressed;
  final Widget? child;
  final Color? backgroundColor;
  final BorderSide? side;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        surfaceTintColor: backgroundColor,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          side: side ?? BorderSide.none,
          borderRadius: borderRadius,
        ),
      ),
      child: child,
    );
  }
}
