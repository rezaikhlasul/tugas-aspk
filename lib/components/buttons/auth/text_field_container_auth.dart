import 'package:bits/constants.dart';
import 'package:flutter/material.dart';

class TextFieldContainerAuth extends StatelessWidget {
  final Widget child;
  final String label;
  const TextFieldContainerAuth({
    Key key,
    this.child,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width * 0.7,
          child: Text(
            label,
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 10),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          width: size.width * 0.8,
          decoration: BoxDecoration(
              color: kPrimaryLightColor,
              borderRadius: BorderRadius.circular(25)),
          child: child,
        ),
      ],
    );
  }
}
