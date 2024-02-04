import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import the services.dart package
import 'package:project_bank_sha/config/common/screen.dart';
import 'package:project_bank_sha/config/routes/Routes.dart';
import 'package:project_bank_sha/presetation/ui/pages/auth/login.dart';
import 'package:project_bank_sha/presetation/ui/pages/auth/register.dart';
import 'package:project_bank_sha/presetation/ui/pages/splash_onboard/onboard_page.dart';
import 'package:project_bank_sha/presetation/ui/pages/splash_onboard/splash_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  // // Lock orientation to portrait
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              theme: ThemeData(
                textTheme:
                    GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
              ),
              useInheritedMediaQuery: true,
              locale: DevicePreview.locale(context),
              builder: DevicePreview.appBuilder,
              debugShowCheckedModeBanner: false,
              initialRoute: '/',
              onGenerateRoute: Routes.onRoute,
            );
          },
        );
      },
    );
  }
}
