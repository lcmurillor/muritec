import 'package:app_muritec/layout/main_layout_page.dart';
import 'package:fluro/fluro.dart';

final Handler mainHandler = Handler(handlerFunc: (context, parameters) {
  return const MainLayoutPage();
});
