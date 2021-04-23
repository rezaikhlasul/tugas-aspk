import 'package:bits/Screens/Login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        title: "halo ini adalah judul",
        body: "ini adalah body",
        image: Container(
          margin: EdgeInsets.only(top: 100),
          child: SvgPicture.asset("assets/ilustrasi/scanning.svg"),
        ),
      ),
      PageViewModel(
        title: "halo ini adalah judul 2",
        body: "ini adalah body 2",
        image: Container(
          margin: EdgeInsets.only(top: 100),
          child: SvgPicture.asset("assets/ilustrasi/scanning.svg"),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: getPages(),
      done: const Text(
        "Done",
        style: TextStyle(color: Colors.black87),
      ),
      onDone: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return LoginScreen();
            },
          ),
        );
      },
      showNextButton: false,
    ));
  }
}
