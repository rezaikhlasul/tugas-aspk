import 'package:bits/constants.dart';
import 'package:flutter/material.dart';

class BackgroundOnboarding extends StatelessWidget {
  final Widget child;
  const BackgroundOnboarding({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              height: size.height * 0.7,
              width: size.width,
              decoration: BoxDecoration(
                gradient: gradientPrimary,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
