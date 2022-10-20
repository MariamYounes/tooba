import 'package:flutter/material.dart';
import 'package:tooba/screens/splash.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case '/Splash':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      // case '/Pages':
      //   return MaterialPageRoute(
      //       builder: (_) => PagesTestWidget(currentTab: args));
      default:
        // If there is no such named route in the switch statement, e.g. /third
        // AIzaSyBqQgxHuVeDKakkoeYwSMYZG8V5eStMHR4
        return MaterialPageRoute(
            builder: (_) => const Scaffold(body: SizedBox(height: 0)));
    }
  }
}
