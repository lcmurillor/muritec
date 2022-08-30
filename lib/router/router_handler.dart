import 'package:app_muritec/layout/main_layout_page.dart';
import 'package:app_muritec/views/views.dart';
import 'package:fluro/fluro.dart';

class MainHandlers {
  static Handler home = Handler(handlerFunc: (context, parameters) {
    return const MainLayoutPage(child: AboutView());
  });

  static Handler experince = Handler(handlerFunc: (context, parameters) {
    return const MainLayoutPage(child: ExperienceView());
  });

  static Handler contactus = Handler(handlerFunc: (context, parameters) {
    return const MainLayoutPage(child: ContactUsView());
  });

  static Handler nofound = Handler(handlerFunc: (context, parameters) {
    return const MainLayoutPage(child: PageNotFoundView());
  });
}
