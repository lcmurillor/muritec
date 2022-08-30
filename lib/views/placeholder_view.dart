import 'package:flutter/material.dart';

class PlaceholderView extends StatelessWidget {
  const PlaceholderView({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width,
        height: size.height - 140,
        child: Center(child: Text('PLACEHOLDER $text')));
  }
}
