import 'package:flutter/material.dart';

class BaseLayout extends StatelessWidget {
  const BaseLayout({super.key, required this.mobile, required this.tablet, required this.web});

  final Widget? mobile;
  final Widget? tablet;
  final Widget? web;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrain) {
      if (constrain.maxWidth < 600) {
        return mobile ?? const Text("Mobile");
      } else if (constrain.maxWidth < 900 && constrain.maxWidth > 600) {
        return tablet ?? const Text("tablet");
      } else {
        return web ?? const Text("web");
      }
    });
  }
}
