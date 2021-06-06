import 'package:bits/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchButton extends StatelessWidget {
  LaunchButton(this.desk, this.ontap);
  final String desk;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return Container(
      child: TextButton(
          child: Text(
            desk,
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          onPressed: ontap),
    );
  }
}

Future<void> openUrl(String url,
    {bool forceWebView = false, bool enableJavaScript = false}) async {
  launch(url);
}
