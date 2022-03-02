// ignore_for_file: file_names

import 'package:flutter/Material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomSocialMediaButton extends StatelessWidget {
  const CustomSocialMediaButton(
      {Key? key, required this.icon, required this.url})
      : super(key: key);
  final IconData icon;
  final String url;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.only(left: 40),
      onPressed: () => launch(url),
      icon: Icon(
        icon,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
