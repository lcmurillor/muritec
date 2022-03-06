import 'package:app_muritec/providers/menu_provider.dart';
import 'package:app_muritec/shared/sheards.dart';
import 'package:flutter/material.dart';

import '../views/about_view.dart';

class MainLayoutPage extends StatelessWidget {
  const MainLayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final MenuProvider menu = Provider.of<MenuProvider>(context);
    return Scaffold(
      body: Column(
        children: [
          const CustomAppMenu(),
          AboutView(width: width, height: height, menu: menu),
        ],
      ),
    );
  }
}
