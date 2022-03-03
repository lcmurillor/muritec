// ignore_for_file: file_names

import 'package:flutter/Material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomSocialMediaButton extends StatelessWidget {
  const CustomSocialMediaButton(
      {Key? key,
      required this.icon,
      required this.url,
      required this.marginLeft,
      this.iconSize})
      : super(key: key);
  final IconData icon;
  final String url;
  final double marginLeft;
  final double? iconSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: marginLeft),
      child: IconButton(
        onPressed: () => launch(url),
        icon: Icon(
          icon,
          color: Colors.white,
          size: iconSize ?? 40,
        ),
      ),
    );
  }
}
