import 'package:resume/feature/about/model/education_model.dart';
import 'package:resume/feature/about/model/experience_model.dart';

class AppConstant {
  static Duration animationDelay = const Duration(milliseconds: 600);

  // Router Const
  static const String home = "/";
  static const String about = "/about";

  static List<EducationModel> educationList = [
    EducationModel(
      date: "2021 - 2021",
      institute: "University of South Asia",
      degree: "B.Sc in Computer Science And Engineering",
    )
  ];

  static List<ExperienceModel> experienceList = [
    ExperienceModel(
      date: "OCT 2023 - PRESENT",
      institute: "Exotico Solution",
      designation: "Software Engineer (Mobile Application)",
      responsibility: [
        "Write clean, efficient, well-documented Flutter code",
        "Optimize Flutter app performance through code tuning and profiling.",
        "Resolve Flutter app bugs promptly for timely updates.",
        "Manage Flutter app deployment to app store and playstore.",
        "Lead Flutter development, enforcing best practices and high-quality standards."
      ],
    ),
    ExperienceModel(
      date: "OCT 2022 - SEP 23",
      institute: "Singularity Limited",
      designation: "Software Developer (Mobile Application)",
      responsibility: [
        "Thoroughly examine the project requirements and develop a detailed project timeline.",
        "Ensure the best possible performance, quality, user experience.",
        "Design robust, scalable Flutter architectures with a focus on performance, scalability, and extensibility.",
        "Optimize Flutter app performance through code tuning and profiling.",
        "Ensure timely delivery of project milestones and goals."
      ],
    ),
    ExperienceModel(
      date: "SEP 2021 - SEP 2022",
      institute: "CholoXYZ",
      designation: "Software Engineer (Flutter)",
      responsibility: [
        "Participated in the planning, analysis, and design of iOS and Android applications using flutter.",
        "Writing code using MVC architecture.",
        "Ensure the best possible performance, quality, user experience",
        "Deploy of apps in Play store and App store",
      ],
    ),
    ExperienceModel(
      date: "OCT, 2020 - SEP, 2021",
      institute: "ConceptX Ltd",
      designation: "Software Engineer (Flutter)",
      responsibility: [
        "Developing apps using GetX framework",
        "Respond to client needs for applications with an eye to the most feasible and effective solutions.",
        "Coordinate with team members to create client apps in a coordinated and timely manner.",
        "Ensure that apps are tested to meet total performance requirements.",
        "Upload apps to Google play store and Apple app store ."
      ],
    ),
    ExperienceModel(
      date: "AUG, 2018 - OCT, 2020",
      institute: "Advanced Apps Bangladesh Limited",
      designation: "Software Engineer (Android)",
      responsibility: [
        "Respond to client needs for applications with an eye to the most feasible and effective solutions.",
        "Coordinate with team members to create client apps in a coordinated and timely manner.",
        "Ensure that apps are tested to meet total performance requirements.",
        "Upload app to Google play store"
      ],
    ),
  ];
}
