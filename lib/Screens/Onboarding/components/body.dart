import 'package:bits/Screens/Onboarding/components/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Body extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        title: "Scan pada kemasan produk",
        body: "ini adalah body 1",
        image: SvgPicture.asset(
          "assets/ilustrasi/scanning.svg",
          alignment: Alignment.center,
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
            imageFlex: 3,
            bodyFlex: 1),
      ),
      PageViewModel(
        title: "Beri penilaian pada produk",
        body: "ini adalah body 1",
        image: SvgPicture.asset(
          "assets/ilustrasi/review.svg",
          alignment: Alignment.center,
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
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
          style: TextStyle(color: Colors.white),
        ),
        onDone: () {},
        pages: getPages(),
        showNextButton: false,
      ),
    );
  }
}
