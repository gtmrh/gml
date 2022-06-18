import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gml/screen/splash/ui/splashscreen.dart';
import 'package:gml/utils/strings.dart';

class MyRoute {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => Splashscreen(),
        );

        // case LOGIN:
        // return MaterialPageRoute(
        //   builder: (context) => Login(),
        // );

        // case "/":
        // return MaterialPageRoute(
        //   builder: (context) => Splashscreen(),
        // );

        // case "/":
        // return MaterialPageRoute(
        //   builder: (context) => Splashscreen(),
        // );

      default:
    }
  }
}
