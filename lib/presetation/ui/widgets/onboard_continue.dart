import 'package:flutter/material.dart';
import 'package:project_bank_sha/config/common/screen.dart';
import 'package:project_bank_sha/config/theme/theme.dart';

class OnboardContinue extends StatelessWidget {
  VoidCallback
      onPressed; //! kita bisa mengparsing function void menggunakan tipedata VoidCallback
  String title;
  OnboardContinue({super.key, required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        elevation: 0,
        backgroundColor: btnPrimaryColor,
      ),
      onPressed: onPressed,
      child: Text(
        // textScaler:
        //     TextScaler.linear(MediaQuery.of(context).size.width / mockupWidth),
        title,
        style: TextStyle(
          color: whiteColor,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
