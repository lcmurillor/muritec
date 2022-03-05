//import 'package:app_muritec/providers/menu_provider.dart';
import 'package:app_muritec/services/firebase_img.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MenuProvider size = Provider.of<MenuProvider>(context);
    return Column(
      children: [
        const SizedBox(height: 200),
        FadeInImage(
            width: double.infinity,
            height: 400,
            fit: BoxFit.cover,
            placeholder: const AssetImage('placeholder.png'),
            image: NetworkImage(FirebaseImg().url)),
      ],
    );
  }
}
