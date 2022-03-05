import 'package:app_muritec/shared/sheards.dart';
import 'package:app_muritec/views/about_view.dart';
import 'package:flutter/material.dart';

class MainLayoutPage extends StatelessWidget {
  const MainLayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(children: const [AboutView(), CustomAppMenu()]),
            const SizedBox(height: 300),
            const CustomAppFooter()
          ],
        ),
      ),
    );
  }
}
