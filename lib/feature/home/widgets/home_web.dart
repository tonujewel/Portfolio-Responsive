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
        HomeSecondSection(size: size),
        HomeThirdSection(size: size)
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
      height: size.height * .38,
      child: Expanded(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: PrimaryContainer(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/demo/google.png",
                        height: size.width * .1,
                      ),
                    ),
                    const VerticalMargin(),
                    const TitleBottomHome(title: "Blog", subTitle: "Latest")
                  ],
                ),
              ).animate().slideX(duration: AppConstant.animationDelay),
            ),
            const HorizontalMargin(),
            Expanded(
              flex: 4,
              child: PrimaryContainer(
                padding: const EdgeInsets.all(20),
                child: Column(
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
                          ),
                          Image.asset(
                            "assets/images/mobile.png",
                            height: size.width * .03,
                          ),
                          Image.asset(
                            "assets/images/mobile.png",
                            height: size.width * .03,
                          ),
                          Image.asset(
                            "assets/images/mobile.png",
                            height: size.width * .03,
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
              ).animate().slideX(duration: AppConstant.animationDelay),
            ),
            const HorizontalMargin(),
            Expanded(
              flex: 2,
              child: PrimaryContainer(
                padding: const EdgeInsets.all(20),
                child: Column(
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
                              padding: const EdgeInsets.all(20),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Image.asset(
                                "assets/images/mobile.png",
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
              ).animate().slideX(duration: AppConstant.animationDelay),
            ),
          ],
        ),
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
      height: size.height * .3,
      child: Expanded(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: PrimaryContainer(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFFFBFBFC),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "07",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                  Text(
                                    "Years Experience",
                                    style: TextStyle(fontSize: 14, color: ColorManager.greyTextColor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const HorizontalMargin(),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFFFBFBFC),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "+125",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                  Text(
                                    "CLIENTS WorLd WIDE",
                                    style: TextStyle(fontSize: 14, color: ColorManager.greyTextColor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const HorizontalMargin(),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFFFBFBFC),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "15+",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                  Text(
                                    "Total Project",
                                    style: TextStyle(fontSize: 14, color: ColorManager.greyTextColor),
                                  ),
                                ],
                              ),
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
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/staricon.png",
                      height: size.width * .03,
                    ),
                    const VerticalMargin(),
                    const Text(
                      "Let's",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                    ),
                    const Row(
                      children: [
                        Text(
                          "work",
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                        ),
                        HorizontalMargin(),
                        Text(
                          "together",
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                        ),
                      ],
                    )
                  ],
                ),
              ).animate().slideX(duration: AppConstant.animationDelay),
            ),
          ],
        ),
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
