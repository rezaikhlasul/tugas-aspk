import 'package:bits/Screens/Login/login_screen.dart';
import 'package:bits/Screens/Onboarding/components/background.dart';
import 'package:bits/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Body extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        title: "Scan pada kemasan produk",
        body: " ",
        image: SvgPicture.asset(
          "assets/ilustrasi/scanning.svg",
          alignment: Alignment.center,
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              color: kPrimaryHardColor,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
            imageFlex: 3,
            bodyFlex: 1),
      ),
      PageViewModel(
        title: "Beri penilaian pada produk",
        body: " ",
        image: SvgPicture.asset(
          "assets/ilustrasi/review.svg",
          alignment: Alignment.center,
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              color: kPrimaryHardColor,
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
            imageFlex: 3,
            bodyFlex: 1),
      ),
      PageViewModel(
        title: "Membantu UMKM meningkatkan kualitasnya",
        body: " ",
        image: SvgPicture.asset(
          "assets/ilustrasi/marketup.svg",
          alignment: Alignment.center,
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              color: kPrimaryHardColor,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
            imageFlex: 3,
            bodyFlex: 1),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundOnboarding(
      child: IntroductionScreen(
        globalBackgroundColor: Colors.transparent,
        done: const Text(
          "Done",
          style: TextStyle(color: Colors.black54),
        ),
        onDone: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return LoginScreen();
              },
            ),
          );
        },
        pages: getPages(),
        showNextButton: false,
      ),
    );
  }
}
