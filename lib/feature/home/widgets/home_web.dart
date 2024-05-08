import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marquee/marquee.dart';

import '../../../core/utils/app_constant.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/widgets/primary_container.dart';
import '../../../core/widgets/vertical_margin.dart';

class HomeWeb extends StatelessWidget {
  const HomeWeb({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: size.width * .06),
      children: [
        SizedBox(height: size.height * .04),
        HomeAppbar(size: size),
        SizedBox(height: size.height * .04),
        HomeFirstSection(size: size),
        HomeSecondSection(size: size)
      ],
    );
  }
}

class HomeFirstSection extends StatelessWidget {
  const HomeFirstSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * .4,
      child: Row(
        children: [
          Expanded(
            child: PrimaryContainer(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Container(
                      height: size.width * .2,
                      width: size.width * .2,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(.2),
                      ),
                      child: Image.asset("assets/images/photo.png"),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Flutter Developer".toUpperCase(),
                          style: TextStyle(color: Colors.grey, fontSize: size.width * .01),
                        ),
                        Text(
                          "Jewel\nRana",
                          style:
                              TextStyle(color: ColorManager.blackTextColor, fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        const Expanded(
                          child: Text(
                            "I am a Mobile Application Developer (Flutter, Android, iOS)",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ).animate().slideX(duration: AppConstant.animationDelay),
          ),
          const HorizontalMargin(),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                PrimaryContainer(
                  height: size.height * .09,
                  child: Marquee(
                    scrollAxis: Axis.horizontal,
                    text:
                        "Skilled Developer with 6 years of experience developing mobile applications and 4 years of experience in the Flutter framework and 2 years of native app development experience.",
                  ),
                ),
                Expanded(
                  child: Container(
                    constraints: const BoxConstraints.expand(),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: PrimaryContainer(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Image.asset(
                                    "assets/images/signature.png",
                                    color: ColorManager.greyTextColor,
                                    height: size.width * .07,
                                  ),
                                ),
                                const VerticalMargin(),
                                const TitleBottomHome(title: "More about me", subTitle: "Credentials"),
                              ],
                            ),
                          ),
                        ),
                        const HorizontalMargin(),
                        Expanded(
                          child: PrimaryContainer(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Image.asset(
                                    "assets/images/projects.png",
                                    height: size.width * .07,
                                  ),
                                ),
                                const VerticalMargin(),
                                const TitleBottomHome(title: "Showcase", subTitle: "Projects"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ).animate().slideY(duration: const Duration(milliseconds: 500)),
        ],
      ),
    );
  }
}

class TitleBottomHome extends StatelessWidget {
  const TitleBottomHome({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.toUpperCase(),
          style: const TextStyle(color: Colors.grey, fontSize: 18),
        ),
        Text(
          subTitle,
          style: TextStyle(color: ColorManager.blackTextColor, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class HomeSecondSection extends StatelessWidget {
  const HomeSecondSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * .4,
      child: Row(
        children: [
          Expanded(
            child: PrimaryContainer(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/demo/google.png",
                        height: size.width * .1,
                      ),
                      const TitleBottomHome(title: "Resources", subTitle: "subTitle")
                    ],
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Flutter Developer".toUpperCase(),
                          style: TextStyle(color: Colors.grey, fontSize: size.width * .01),
                        ),
                        Text(
                          "Jewel\nRana",
                          style:
                              TextStyle(color: ColorManager.blackTextColor, fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        const Expanded(
                          child: Text(
                            "I am a Mobile Application Developer (Flutter, Android, iOS)",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ).animate().slideX(duration: AppConstant.animationDelay),
          ),
          const HorizontalMargin(),
          // Expanded(
          //   child: Column(
          //     mainAxisSize: MainAxisSize.max,
          //     children: [
          //       PrimaryContainer(
          //         height: size.height * .09,
          //         child: Marquee(
          //           scrollAxis: Axis.horizontal,
          //           text:
          //               "Skilled Developer with 6 years of experience developing mobile applications and 4 years of experience in the Flutter framework and 2 years of native app development experience.",
          //         ),
          //       ),
          //       Expanded(
          //         child: Container(
          //           constraints: const BoxConstraints.expand(),
          //           padding: const EdgeInsets.symmetric(horizontal: 10),
          //           child: Row(
          //             children: [
          //               Expanded(
          //                 child: PrimaryContainer(
          //                   child: Column(
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     mainAxisAlignment: MainAxisAlignment.center,
          //                     children: [
          //                       Center(
          //                         child: Image.asset(
          //                           "assets/images/signature.png",
          //                           color: ColorManager.greyTextColor,
          //                           height: size.width * .07,
          //                         ),
          //                       ),
          //                       const VerticalMargin(),
          //                       Column(
          //                         crossAxisAlignment: CrossAxisAlignment.start,
          //                         children: [
          //                           Text(
          //                             "More about me".toUpperCase(),
          //                             style: const TextStyle(color: Colors.grey, fontSize: 18),
          //                           ),
          //                           Text(
          //                             "Credentials",
          //                             style: TextStyle(
          //                                 color: ColorManager.blackTextColor,
          //                                 fontSize: 18,
          //                                 fontWeight: FontWeight.bold),
          //                           ),
          //                         ],
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //               const HorizontalMargin(),
          //               Expanded(
          //                 child: PrimaryContainer(
          //                   child: Column(
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     mainAxisAlignment: MainAxisAlignment.center,
          //                     children: [
          //                       Center(
          //                         child: Image.asset(
          //                           "assets/images/projects.png",
          //                           height: size.width * .07,
          //                         ),
          //                       ),
          //                       const VerticalMargin(),
          //                       Column(
          //                         crossAxisAlignment: CrossAxisAlignment.start,
          //                         children: [
          //                           Text(
          //                             "Showcase".toUpperCase(),
          //                             style: const TextStyle(color: Colors.grey, fontSize: 18),
          //                           ),
          //                           Text(
          //                             "Projects",
          //                             style: TextStyle(
          //                                 color: ColorManager.blackTextColor,
          //                                 fontSize: 18,
          //                                 fontWeight: FontWeight.bold),
          //                           ),
          //                         ],
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ).animate().slideY(duration: const Duration(milliseconds: 500)),
        ],
      ),
    );
  }
}

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("assets/svg/logo-dark.svg"),
        const Spacer(),
        const HomeAppbarItem(titile: "Home"),
        AppbarSpacing(size: size),
        const HomeAppbarItem(titile: "About"),
        SizedBox(width: size.width * 0.04),
        const HomeAppbarItem(titile: "Works"),
        SizedBox(width: size.width * 0.04),
        const HomeAppbarItem(titile: "Contact"),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.black,
          ),
          child: const Text(
            "Let's Talk",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
          ),
        )
      ],
    );
  }
}

class AppbarSpacing extends StatelessWidget {
  const AppbarSpacing({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: size.width * 0.02);
  }
}

class HomeAppbarItem extends StatelessWidget {
  const HomeAppbarItem({
    super.key,
    required this.titile,
  });

  final String titile;

  @override
  Widget build(BuildContext context) {
    return Text(
      titile,
      style: const TextStyle(fontSize: 18),
    );
  }
}
