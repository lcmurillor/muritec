import 'package:app_muritec/router/router_handler.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();
  static void configureRoutes() {
    router.define('/', handler: mainHandler);
    router.notFoundHandler = mainHandler;
  }
}
