import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bits/Screens/Onboarding/onboarding_screen.dart';
import 'package:bits/constants.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          gradient: gradientPrimary,
        ),
        child: AnimatedSplashScreen(
          splash: SizedBox(
            child: LottieBuilder.asset(
              "assets/icons/logo.json",
            ),
          ),
          nextScreen: OnboardingScreen(),
          splashIconSize: 350,
          duration: 5000,
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
