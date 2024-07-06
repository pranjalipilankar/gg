import 'dart:async';
import 'package:flutter/material.dart';
import 'package:green_gather/presentation/onboarding_fone_screen/onboarding_fone_screen.dart';
import '../../core/app_export.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 7), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingFoneScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 72.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20.h), // Adjust the height for proper spacing
              WelcomeTitle(),
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Green",
            style: theme.textTheme.displaySmall,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Gather",
              style: CustomTextStyles.displaySmallPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}

