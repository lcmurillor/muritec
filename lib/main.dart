import 'package:app_muritec/router/router.dart';
import 'package:flutter/material.dart';

void main() {
  Flurorouter.configureRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MuriTEC',
      initialRoute: '/',
      onGenerateRoute: Flurorouter.router.generator,
    );
  }
}
