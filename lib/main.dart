import 'package:app_muritec/providers/email_provider.dart';
import 'package:app_muritec/providers/menu_provider.dart';
import 'package:app_muritec/providers/scroll_provider.dart';
import 'package:app_muritec/router/router.dart';
import 'package:app_muritec/services/navigation_service.dart';
import 'package:app_muritec/services/notifications_service.dart';
import 'package:app_muritec/theme/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MenuProvider()),
        ChangeNotifierProvider(create: (_) => ScrollProvider()),
        ChangeNotifierProvider(create: (_) => EmailFormProvider())
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Flurorouter.configureRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MuriTEC',
      initialRoute: '/',
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: NavigationService.navigatorKey,
      scaffoldMessengerKey: NotificationsService.messengerKey,
      theme: MainTheme.lightTheme,
    );
  }
}
