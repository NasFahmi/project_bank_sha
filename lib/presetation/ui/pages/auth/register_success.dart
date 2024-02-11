import 'package:flutter/material.dart';
import 'package:project_bank_sha/config/common/screen.dart';
import 'package:project_bank_sha/config/routes/Route.dart';
import 'package:project_bank_sha/config/theme/theme.dart';
import 'package:project_bank_sha/presetation/ui/widgets/btn_primary.dart';

class RegisterSuccessPage extends StatelessWidget {
  const RegisterSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grayBackgroundColorOnboard,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Akun Berhasil\nTerdaftar',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: tittleColorFont,
                  fontSize: SizeConfig.calMultiplierText(20),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: SizeConfig.calHeightMultiplier(20),
              ),
              Text(
                'Grow your finance start\ntogether with us',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: btnSecoundryColor,
                  fontSize: SizeConfig.calMultiplierText(16),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: SizeConfig.calHeightMultiplier(32),
              ),
              Container(
                width: SizeConfig.calWidthMultiplier(200),
                height: SizeConfig.calHeightMultiplier(50),
                child: BtnPrimary(
                  onPressed: () {
                    Navigator.of(context).pushNamed(routeLogin);
                  },
                  title: 'Get Started',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
