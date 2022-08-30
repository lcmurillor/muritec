import 'package:app_muritec/shared/sheards.dart';
import 'package:flutter/material.dart';

class MainLayoutPage extends StatelessWidget {
  const MainLayoutPage({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [const CustomAppMenu(), child],
      ),
    );
  }
}
