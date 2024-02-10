import 'package:flutter/material.dart';
import 'package:project_bank_sha/config/routes/Route.dart';
import 'package:project_bank_sha/presetation/ui/pages/auth/login.dart';
import 'package:project_bank_sha/presetation/ui/pages/auth/login_pin.dart';
import 'package:project_bank_sha/presetation/ui/pages/auth/register.dart';
import 'package:project_bank_sha/presetation/ui/pages/auth/register_pin.dart';
import 'package:project_bank_sha/presetation/ui/pages/auth/register_profile.dart';
import 'package:project_bank_sha/presetation/ui/pages/auth/register_success.dart';
import 'package:project_bank_sha/presetation/ui/pages/auth/register_verifiy.dart';
import 'package:project_bank_sha/presetation/ui/pages/notFound.dart';
import 'package:project_bank_sha/presetation/ui/pages/splash_onboard/onboard_page.dart';
import 'package:project_bank_sha/presetation/ui/pages/splash_onboard/splash_page.dart';

class Routes {
  static Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeInitial:
        return MaterialPageRoute(
          // builder: (context) => SplashPage(),
          // builder: (context) => RegisterProfilePage(),
          // builder: (context) => RegisterVerifyPage(),
          builder: (context) => RegisterPinPage(),
        );
      case routeOnboard:
        return MaterialPageRoute(
          builder: (context) => OnboardPage(),
        );
      case routeLogin:
        return MaterialPageRoute(
          builder: (context) => LoginPage(),
        );
      case routeLoginPin:
        return MaterialPageRoute(
          builder: (context) => LoginPinPage(),
        );
      case routeRegister:
        return MaterialPageRoute(
          builder: (context) => RegisterPage(),
        );
      case routeRegisterProfile:
        return MaterialPageRoute(
          builder: (context) => RegisterProfilePage(),
        );
      case routeRegisterVerify:
        return MaterialPageRoute(
          builder: (context) => RegisterVerifyPage(),
        );
      case routeRegisterPin:
        return MaterialPageRoute(
          builder: (context) => RegisterPinPage(),
        );
      case routeRegisterSuccess:
        return MaterialPageRoute(
          builder: (context) => RegisterSuccessPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => NotFoundPage(),
        );
    }
  }
}
