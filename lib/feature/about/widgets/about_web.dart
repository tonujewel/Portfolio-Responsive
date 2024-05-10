import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:resume/feature/about/model/experience_model.dart';

import '../../../core/utils/app_constant.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/widgets/primary_container.dart';
import '../../../core/widgets/vertical_margin.dart';
import '../../home/widgets/home_web.dart';

class AboutWeb extends StatelessWidget {
  const AboutWeb({super.key, required this.size});

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
                  AboutFirstSection(size: size),
                  const VerticalMargin(),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: ExperienceSection()),
                      HorizontalMargin(),
                      Expanded(child: EducationSection()),
                    ],
                  ),
                  // HomeThirdSection(size: size),
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

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const PrimaryContainer(
      child: Column(
        children: [
          Text(
            "EDUCATION",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          VerticalMargin(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2004 - 2007",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: ColorManager.greyTextColor),
              ),
              VerticalMargin(height: 10),
              Text(
                "Bachelor Degree in Psychology",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: ColorManager.primaryBlue),
              ),
              VerticalMargin(height: 10),
              Text(
                "University of California",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: ColorManager.greyTextColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryContainer(
      child: Column(
        children: [
          const Text(
            "EXPERIENCE",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const VerticalMargin(),
          ListView.builder(
              itemCount: AppConstant.experienceList.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (_, index) {
                return ExperienceItem(data: AppConstant.experienceList[index]);
              })
        ],
      ),
    );
  }
}

class ExperienceItem extends StatelessWidget {
  const ExperienceItem({
    super.key,
    required this.data,
  });

  final ExperienceModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data.designation,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: ColorManager.primaryBlue),
        ),
        const VerticalMargin(height: 10),
        Text(
          data.institute,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: ColorManager.blackTextColor),
        ),
        const VerticalMargin(height: 10),
        Text(
          data.date,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: ColorManager.blackTextColor),
        ),
        const VerticalMargin(),
        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: data.responsibility.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    const Icon(
                      Icons.star_border_purple500_outlined,
                      color: ColorManager.primaryBlue,
                    ),
                    const HorizontalMargin(),
                    Flexible(child: Text(data.responsibility[index])),
                  ],
                ),
              );
            }),
        const VerticalMargin(),
        const VerticalMargin(),
      ],
    );
  }
}

class AboutFirstSection extends StatelessWidget {
  const AboutFirstSection({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PrimaryContainer(
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: size.width * .2,
                  width: size.width * .2,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(.2),
                  ),
                  child: Image.asset("assets/images/photo.png"),
                ),
              ),
            ],
          ),
        ).animate().slideX(duration: AppConstant.animationDelay),
        const HorizontalMargin(),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/blue_star.png"),
                  const Text(
                    "SELF-SUMMARY",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Image.asset("assets/images/blue_star.png"),
                ],
              ),
              const VerticalMargin(),
              PrimaryContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/staricon.png",
                      height: size.width * .03,
                    ),
                    const Row(
                      children: [
                        Text(
                          "Jewel ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 36,
                          ),
                        ),
                        Text(
                          "Rana",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36, color: ColorManager.primaryBlue),
                        ),
                      ],
                    ),
                    const VerticalMargin(height: 10),
                    const Text(
                      "Skilled Developer with 6 years of experience developing mobile applications and 4 years of experience in the Flutter framework and 2 years of native app development experience. Skilled in collaborating with cross-functional teams to deliver high-quality, scalable solutions. Proficient in Agile development methodologies and a self-motivated learner. Seeking to leverage my expertise in software development and my passion for innovation to drive business growth and success.",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: ColorManager.blackTextColor,
                      ),
                    ),
                  ],
                ),
              ).animate().slideY(duration: AppConstant.animationDelay),
            ],
          ),
        ).animate().slideY(duration: const Duration(milliseconds: 500)),
      ],
    );
  }
}
