import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_routes/LandingPage.dart';
import 'package:flutter_routes/splashScreen.dart';

class Router {
  static final FluroRouter router = FluroRouter();

  static Handler _splashHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Splashscreen());

  static Handler _mainHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LandingPage(
            page: params['name'][0],
          ));
  static Handler _mainHandler2 = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LandingPage(
            page: params['name'][0],
            extra: params['extra'][0],
          ));

  static void setupRouter() {
    router.define("/", handler: _splashHandler);

    router.define("/main/:name",
        handler: _mainHandler, transitionType: TransitionType.fadeIn);

    router.define("/main/:name/:extra",
        handler: _mainHandler2, transitionType: TransitionType.fadeIn);
  }
}
