import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_bank_sha/config/common/image_assets.dart';
import 'package:project_bank_sha/config/theme/theme.dart';
import 'package:project_bank_sha/presetation/ui/pages/splash_onboard/onboard_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const OnboardPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColorOnboard,
      body: Center(
        child: Container(
          width: 155, //! dari width logo di figma
          height: 55, //! dari heigh logo ddi figma
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(logoWhiteAssets),
            ),
          ),
        ),
      ),
    );
  }
}
