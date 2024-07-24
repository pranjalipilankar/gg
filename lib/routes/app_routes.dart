import 'dart:js';

import 'package:flutter/material.dart';
import 'package:green_gather/presentation/home_page_container_screen/home_page_container_screen.dart';
import 'package:green_gather/presentation/image_upload_screen/image_upload_screen.dart';
import 'package:green_gather/presentation/maps_page_screen/maps_page_screen.dart';
import 'package:green_gather/presentation/report_page_screen/report_page_screen.dart';
import 'package:green_gather/presentation/survey_screen/piechart_screen.dart';
import 'package:green_gather/presentation/survey_screen/survey_screen.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/onboarding_fone_screen/onboarding_fone_screen.dart';
import '../presentation/onboarding_fthree_screen/onboarding_fthree_screen.dart';
import '../presentation/onboarding_ftwo_screen/onboarding_ftwo_screen.dart';
import '../presentation/welcome_screen/welcome_screen.dart';
import 'package:green_gather/presentation/comment_screen.dart';

class AppRoutes {
  static const String welcomeScreen = '/welcome_screen';
  static const String onboardingFoneScreen = '/onboarding_fone_screen';
  static const String onboardingFtwoScreen = '/onboarding_ftwo_screen';
  static const String onboardingFthreeScreen = '/onboarding_fthree_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';
  static const String homePageContainerScreen = '/home_page_container_screen';
  static const String homePage = '/home_page';
  static const String mapsPageScreen = '/maps_page_screen';
  static const String surveyScreen = '/survey_screen';
  static const String imageuploadscreen = '/image_upload_screen';
  static const String commentsscreen = '/comment_screen';

  static Map<String, WidgetBuilder> routes = {
    commentsscreen: (context) => CommentsPage(),
    homePageContainerScreen: (context) => HomePageContainerScreen(),
    welcomeScreen: (context) => WelcomeScreen(),
    onboardingFoneScreen: (context) => OnboardingFoneScreen(),
    onboardingFtwoScreen: (context) => OnboardingFtwoScreen(),
    onboardingFthreeScreen: (context) => OnboardingFthreeScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => WelcomeScreen(),
    mapsPageScreen: (context) => RecyclingMap(),
    surveyScreen: (context) => SurveyForm(
          onComplete: ({
            required String instituteName,
            required String pincode,
            required int totalArea,
            required double dryWaste,
            required double wetWaste,
            required double biomedicalWaste,
            required double eWaste,
            required double hazardousWaste,
            required List<String> wasteDisposalFacility,
          }) {
          },
        ),
  };

  static MaterialPageRoute reportPageScreen({
    required double dryWaste,
    required double wetWaste,
    required double biomedicalWaste,
    required double eWaste,
    required double hazardousWaste,
    required List<String> wasteDisposalFacility,
  }) {
    return MaterialPageRoute(
      builder: (context) => PieChartScreen(
        dryWaste: dryWaste,
        wetWaste: wetWaste,
        biomedicalWaste: biomedicalWaste,
        eWaste: eWaste,
        hazardousWaste: hazardousWaste,
        wasteDisposalFacility: wasteDisposalFacility,
      ),
    );
  }
}
