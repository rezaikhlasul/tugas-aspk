import 'package:flutter/material.dart';

class BackgroundHomeKonsumen extends StatelessWidget {
  final Widget child;
  const BackgroundHomeKonsumen({
    Key key,
    this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
    );
  }
}
