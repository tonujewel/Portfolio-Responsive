import 'package:flutter/material.dart';

class PrimaryContainer extends StatelessWidget {
  final Widget child;
  final double? height, width, borderRadius;
  final EdgeInsetsGeometry? padding;
  final Function()? onTap;
  final Function(bool)? onHover;

  const PrimaryContainer({
    super.key,
    required this.child,
    this.height,
    this.width,
    this.padding,
    this.borderRadius,
    this.onHover,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: const EdgeInsets.only(bottom: 10),
      padding: padding ?? const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 30),
        color: Colors.white,
      ),
      child: InkWell(
        onHover: onHover,
        onTap: onTap,
        child: child,
      ),
    );
  }
}
