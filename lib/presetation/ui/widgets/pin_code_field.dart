import 'package:flutter/material.dart';
import 'package:project_bank_sha/config/common/screen.dart';
import 'package:project_bank_sha/config/theme/theme.dart';

class PinCodeField extends StatelessWidget {
  TextEditingController pinController = TextEditingController();
  OutlineInputBorder outlineInputBorder = OutlineInputBorder();
  PinCodeField(
      {super.key,
      required this.pinController,
      required this.outlineInputBorder});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.calWidthMultiplier(50),
      child: TextField(
        controller: pinController,
        enabled: false, //! agar tidak dapat dipencet/diisi dengan keyboard asli
        obscureText: true,
        style: TextStyle(
          fontSize: SizeConfig.calMultiplierText(18),
          color: tittleColorFont,
          fontWeight: FontWeight.w700,
        ),
        textAlign: TextAlign.center, //! align text ketengah
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          disabledBorder: outlineInputBorder,
          contentPadding: EdgeInsets.all(SizeConfig.calWidthMultiplier(16)),
          filled: true,
          fillColor: Colors.white,
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(
          //     SizeConfig.calWidthMultiplier(8),
          //   ),
          // ),
          // enabledBorder: OutlineInputBorder(
          //   borderRadius:
          //       BorderRadius.circular(SizeConfig.calWidthMultiplier(8)),
          //   borderSide: BorderSide(
          //     width: 2,
          //     color: Colors.white,
          //   ),
          // ),
          // focusedBorder: OutlineInputBorder(
          //   borderRadius:
          //       BorderRadius.circular(SizeConfig.calWidthMultiplier(8)),
          //   borderSide: BorderSide(
          //     width: 2,
          //     color: strokeTextFiledColorFocused,
          //   ),
          // ),
          // errorBorder: OutlineInputBorder(
          //   borderRadius:
          //       BorderRadius.circular(SizeConfig.calWidthMultiplier(8)),
          //   borderSide: BorderSide(
          //     width: 2,
          //     color: strokeTextFieldColorError,
          //   ),
          // ),
        ),
      ),
    );
  }
}
