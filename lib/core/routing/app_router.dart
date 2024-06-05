import 'package:doc_app/core/routing/routes.dart';
import 'package:doc_app/features/login/login_screen.dart';
import 'package:doc_app/features/on_boarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("No Route defined for ${settings.name}"),
            ),
          ),
        );
    }
  }
}
