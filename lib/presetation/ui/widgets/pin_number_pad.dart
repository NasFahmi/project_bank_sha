import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:project_bank_sha/config/common/screen.dart';
import 'package:project_bank_sha/config/theme/theme.dart';

class PinNumberPad extends StatelessWidget {
  int n;
  VoidCallback onTap;
  bool isDelete = false;
  PinNumberPad(
      {super.key,
      required this.n,
      required this.onTap,
      required this.isDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.calWidthMultiplier(60),
      height: SizeConfig.calWidthMultiplier(60),
      margin: EdgeInsets.only(bottom: SizeConfig.calHeightMultiplier(24)),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white30,
      ),
      alignment: Alignment.center,
      child: MaterialButton(
        onPressed: onTap,
        padding: EdgeInsets.all(SizeConfig.calWidthMultiplier(8)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            SizeConfig.calWidthMultiplier(60),
          ),
        ),
        height: SizeConfig.calWidthMultiplier(60),
        child: isDelete == true
            ? Center(
                child: Icon(
                  size: SizeConfig.calMultiplierText(24),
                  FluentIcons.backspace_24_regular,
                  color: tittleColorFont,
                ),
              )
            : Text(
                '$n',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: SizeConfig.calMultiplierText(24),
                  color: tittleColorFont,
                  fontWeight: FontWeight.w700,
                ),
              ),
      ),
    );
  }
}
