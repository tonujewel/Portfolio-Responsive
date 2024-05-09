import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/widgets/base_layout.dart';
import '../widgets/home_web.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorManager.bgColor,
      body: BaseLayout(
        mobile: null,
        tablet: null,
        web: HomeWeb(size: size),
      ),
    );
  }
}
