import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/widgets/base_layout.dart';
import '../widgets/about_web.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorManager.bgColor,
      body: BaseLayout(
        mobile: null,
        tablet: null,
        web: AboutWeb(size: size),
      ),
    );
  }
}
