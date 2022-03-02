import 'package:app_muritec/shared/sheards.dart';
import 'package:flutter/material.dart';

class MainLayoutPage extends StatelessWidget {
  const MainLayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: const [CustomAppMenu(), Spacer(), CustomAppFooter()],
      )),
    );
  }
}
