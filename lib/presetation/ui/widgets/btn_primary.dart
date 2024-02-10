import 'package:flutter/material.dart';
import 'package:project_bank_sha/config/common/screen.dart';
import 'package:project_bank_sha/config/theme/theme.dart';

class BtnPrimary extends StatelessWidget {
  final VoidCallback
      onPressed; //! kita bisa mengparsing function void menggunakan tipedata VoidCallback
  final String title;
  BtnPrimary({super.key, required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.calWidthMultiplier(16),
            vertical: SizeConfig.calHeightMultiplier(12)),
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
