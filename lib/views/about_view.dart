import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: (MediaQuery.of(context).size.width > 910) ? 140 : 80),
        Image.asset(
          'assets/img1.jpg',
          height: 300,
          width: double.infinity,
          fit: BoxFit.cover,
        )
      ],
    );
  }
}
