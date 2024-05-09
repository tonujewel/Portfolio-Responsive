import 'package:go_router/go_router.dart';
import 'package:resume/core/utils/app_constant.dart';
import 'package:resume/feature/about/screen/about_screen.dart';

import '../../feature/home/screen/home_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: AppConstant.home,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: AppConstant.about,
      builder: (context, state) => const AboutScreen(),
    ),
  ],
);
