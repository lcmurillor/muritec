import 'package:app_muritec/router/router_handler.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static String rootRoute = '/';
  static String experienceRoute = '/experince';
  static String contactusRoute = '/contactus';

  static void configureRoutes() {
    router.define(rootRoute,
        handler: MainHandlers.home, transitionType: TransitionType.none);
    router.define(experienceRoute,
        handler: MainHandlers.experince, transitionType: TransitionType.none);
    router.define(contactusRoute,
        handler: MainHandlers.contactus, transitionType: TransitionType.none);
    router.define(contactusRoute,
        handler: MainHandlers.contactus, transitionType: TransitionType.none);
    router.notFoundHandler = MainHandlers.nofound;
  }
}
