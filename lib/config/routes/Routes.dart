import 'package:flutter/material.dart';
import 'package:project_bank_sha/presetation/ui/pages/auth/login.dart';
import 'package:project_bank_sha/presetation/ui/pages/auth/register.dart';
import 'package:project_bank_sha/presetation/ui/pages/notFound.dart';
import 'package:project_bank_sha/presetation/ui/pages/splash_onboard/onboard_page.dart';
import 'package:project_bank_sha/presetation/ui/pages/splash_onboard/splash_page.dart';

class Routes {
  static Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => SplashPage(),
        );
      case '/onboard':
        return MaterialPageRoute(
          builder: (context) => OnboardPage(),
        );
      case '/sign-in':
        return MaterialPageRoute(
          builder: (context) => LoginPage(),
        );
      case '/register':
        return MaterialPageRoute(
          builder: (context) => RegisterPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => NotFoundPage(),
        );
    }
  }
}
