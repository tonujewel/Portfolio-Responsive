import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * .06),
      child: Column(
        children: [
          SizedBox(height: size.height * .06),
          HomeAppbar(size: size),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: size.height * .04),
                  HomeFirstSection(size: size),
                  const VerticalMargin(),
                  HomeSecondSection(size: size),
                  const VerticalMargin(),
                  HomeThirdSection(size: size),
                  HomeBottomSection(size: size),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HomeBottomSection extends StatelessWidget {
  const HomeBottomSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: size.height * .1),
        SvgPicture.asset("assets/svg/logo.svg", height: size.width * .04),
        const VerticalMargin(),
        const VerticalMargin(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("HOME", style: TextStyle(fontWeight: FontWeight.bold)),
            AppbarSpacing(size: size),
            const Text("ABOUT", style: TextStyle(fontWeight: FontWeight.bold)),
            AppbarSpacing(size: size),
            const Text("WORKS", style: TextStyle(fontWeight: FontWeight.bold)),
            AppbarSpacing(size: size),
            const Text("CONTACT", style: TextStyle(fontWeight: FontWeight.bold)),
            AppbarSpacing(size: size),
          ],
        ),
        const VerticalMargin(),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("@All rights reserved by "),
            Text("Jewel Rana",
                style: TextStyle(
                  color: ColorManager.primaryBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                )),
          ],
        ),
        SizedBox(height: size.height * .1)
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
              onTap: () => context.go(AppConstant.about),
              child: Stack(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        child: Container(
                          height: size.width * .2,
                          width: size.width * .2,
                          decoration: const BoxDecoration(
                            color: Color(0xFFFBFBFC),
                          ),
                          child: Image.asset("assets/images/photo.png"),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Flutter Developer".toUpperCase(),
                              style: TextStyle(color: Colors.grey, fontSize: size.width * .01),
                            ),
                            const Text(
                              "Jewel\nRana",
                              style: TextStyle(
                                  color: ColorManager.blackTextColor, fontSize: 40, fontWeight: FontWeight.bold),
                            ),
                            const Flexible(
                              child: Text(
                                "I am a Mobile Application Developer based in Dhaka",
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
                  Positioned(bottom: 0, right: 0, child: SvgPicture.asset("assets/svg/color_star.svg")),
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
                            child: Stack(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Image.asset(
                                        "assets/images/signature.png",
                                        color: ColorManager.greyTextColor,
                                        height: size.width * .06,
                                      ),
                                    ),
                                    const VerticalMargin(),
                                    const TitleBottomHome(title: "More about me", subTitle: "Credentials"),
                                  ],
                                ),
                                Positioned(bottom: 0, right: 0, child: SvgPicture.asset("assets/svg/color_star.svg")),
                              ],
                            ),
                          ),
                        ),
                        const HorizontalMargin(),
                        Expanded(
                          child: PrimaryContainer(
                            child: Stack(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Image.asset(
                                        "assets/images/projects.png",
                                        height: size.width * .06,
                                      ),
                                    ),
                                    const VerticalMargin(),
                                    const TitleBottomHome(title: "Showcase", subTitle: "Projects"),
                                  ],
                                ),
                                Positioned(bottom: 0, right: 0, child: SvgPicture.asset("assets/svg/color_star.svg")),
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
          style: const TextStyle(color: Colors.grey),
        ),
        Text(
          subTitle,
          style: const TextStyle(
            color: ColorManager.blackTextColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
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
      height: size.height * .38,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: PrimaryContainer(
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/demo/google.png",
                          height: size.width * .1,
                        ),
                      ),
                      // const VerticalMargin(),
                      const TitleBottomHome(title: "Latest", subTitle: "Tutorial")
                    ],
                  ),
                  Positioned(bottom: 0, right: 0, child: SvgPicture.asset("assets/svg/color_star.svg")),
                ],
              ),
            ).animate().slideX(duration: AppConstant.animationDelay),
          ),
          const HorizontalMargin(),
          const HorizontalMargin(),
          Expanded(
            flex: 4,
            child: PrimaryContainer(
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              "assets/images/mobile.png",
                              height: size.width * .03,
                              color: ColorManager.primaryBlue,
                            ),
                            Image.asset(
                              "assets/images/mobile.png",
                              height: size.width * .03,
                              color: ColorManager.primaryBlue,
                            ),
                            Image.asset(
                              "assets/images/mobile.png",
                              height: size.width * .03,
                              color: ColorManager.primaryBlue,
                            ),
                            Image.asset(
                              "assets/images/mobile.png",
                              height: size.width * .03,
                              color: ColorManager.primaryBlue,
                            ),
                          ],
                        ),
                      ),
                      const Column(
                        children: [
                          VerticalMargin(),
                          TitleBottomHome(title: "SPECIALIZATION", subTitle: "Services Offering"),
                        ],
                      )
                    ],
                  ),
                  Positioned(bottom: 0, right: 0, child: SvgPicture.asset("assets/svg/color_star.svg")),
                ],
              ),
            ).animate().slideY(duration: AppConstant.animationDelay),
          ),
          const HorizontalMargin(),
          const HorizontalMargin(),
          Expanded(
            flex: 2,
            child: PrimaryContainer(
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFFBFBFC),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(16),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Image.asset(
                                  "assets/images/mobile.png",
                                  color: ColorManager.primaryBlue,
                                  height: size.width * .03,
                                ),
                              ),
                              const HorizontalMargin(),
                              Container(
                                padding: const EdgeInsets.all(16),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Image.asset(
                                  "assets/images/mobile.png",
                                  color: ColorManager.primaryBlue,
                                  height: size.width * .03,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Column(
                        children: [
                          VerticalMargin(),
                          TitleBottomHome(title: "STAY WITH ME", subTitle: "Profiles"),
                        ],
                      )
                    ],
                  ),
                  Positioned(bottom: 0, right: 0, child: SvgPicture.asset("assets/svg/color_star.svg")),
                ],
              ),
            ).animate().slideX(duration: AppConstant.animationDelay),
          ),
        ],
      ),
    );
  }
}

class HomeThirdSection extends StatelessWidget {
  const HomeThirdSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * .35,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: PrimaryContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: HomeCounterWidget(
                            size: size,
                            title: '06',
                            subTitle: 'Years',
                            subSub: "Experience",
                          ),
                        ),
                        const HorizontalMargin(),
                        Expanded(
                          child: HomeCounterWidget(
                            size: size,
                            title: '+10',
                            subTitle: 'CLIENTS',
                            subSub: "WORLD WIDE",
                          ),
                        ),
                        const HorizontalMargin(),
                        Expanded(
                          child: HomeCounterWidget(
                            size: size,
                            title: '+15',
                            subTitle: 'Total',
                            subSub: "Project",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ).animate().slideX(duration: AppConstant.animationDelay),
          ),
          const HorizontalMargin(),
          Expanded(
            flex: 2,
            child: PrimaryContainer(
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/staricon.png",
                        height: size.width * .03,
                      ),
                      const Spacer(),
                      const Text(
                        "Let's",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                        ),
                      ),
                      const Row(
                        children: [
                          Text(
                            "work",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                          ),
                          HorizontalMargin(),
                          Text(
                            "together",
                            style:
                                TextStyle(fontWeight: FontWeight.bold, fontSize: 36, color: ColorManager.primaryBlue),
                          ),
                        ],
                      )
                    ],
                  ),
                  Positioned(bottom: 0, right: 0, child: SvgPicture.asset("assets/svg/color_star.svg")),
                ],
              ),
            ).animate().slideY(duration: AppConstant.animationDelay),
          ),
        ],
      ),
    );
  }
}

class HomeCounterWidget extends StatelessWidget {
  const HomeCounterWidget({
    super.key,
    required this.size,
    required this.title,
    required this.subTitle,
    required this.subSub,
  });

  final Size size;
  final String title, subTitle, subSub;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFBFBFC),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: size.width * .032,
              color: ColorManager.primaryBlue,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subTitle.toUpperCase(),
            style: const TextStyle(fontSize: 16, color: ColorManager.greyTextColor),
          ),
          Text(
            subSub.toUpperCase(),
            style: const TextStyle(fontSize: 16, color: ColorManager.greyTextColor),
          ),
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
        SvgPicture.asset(
          "assets/svg/logo.svg",
          height: size.width * .04,
        ),
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
