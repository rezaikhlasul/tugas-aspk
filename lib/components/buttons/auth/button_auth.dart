import 'package:bits/constants.dart';
import 'package:flutter/material.dart';

class RoundedAuthButton extends StatelessWidget {
  final String text;
  final Function press;
  final color, textColor;
  const RoundedAuthButton({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: 45,
      margin: EdgeInsets.only(bottom: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(45),
        child: TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              backgroundColor: color,
            ),
            onPressed: press,
            child: Text(
              text,
              overflow: TextOverflow.visible,
              style: TextStyle(color: textColor, fontSize: 16),
            )),
      ),
    );
  }
}
