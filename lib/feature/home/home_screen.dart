import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resume/core/utils/color_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorManager.bgColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * .1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            HomeAppbar(size: size),
            const SizedBox(height: 60),
            Container(
              padding: const EdgeInsets.all(20),
              height: size.height * .4,
              width: size.width * .4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    height: size.height * .25,
                    width: size.height * .25,
                    decoration: const BoxDecoration(color: Colors.blue),
                  ),
                  const Column(
                    children: [
                      Text(
                        "A App Developer",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Text("Jewel\nRana"),
                      Text("I am a App Developer Based in Dhaka "),
                    ],
                  )
                ],
              ),
            )
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
