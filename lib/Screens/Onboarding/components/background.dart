import 'package:flutter/material.dart';

class BackgroundOnboarding extends StatelessWidget {
  final Widget child;
  const BackgroundOnboarding({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      color: Colors.white,
      // decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //         colors: ([kPrimaryLightColor, kPrimaryColor]),
      //         begin: Alignment.topLeft,
      //         end: Alignment.bottomRight)),
    );
  }
}
