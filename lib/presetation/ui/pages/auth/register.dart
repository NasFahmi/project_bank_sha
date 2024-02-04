import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:project_bank_sha/config/common/image_assets.dart';
import 'package:project_bank_sha/config/common/screen.dart';
import 'package:project_bank_sha/config/theme/theme.dart';
import 'package:project_bank_sha/presetation/ui/widgets/btn_primary.dart';
import 'package:project_bank_sha/presetation/ui/widgets/textformfield_auth.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController fullnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isObscurePassword = false;

  void toogleEye() {
    setState(() {
      isObscurePassword = !isObscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grayBackgroundColorOnboard,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.calWidthMultiplier(16)),
          children: [
            //* logo
            Container(
              width: SizeConfig.calWidthMultiplier(155),
              height: SizeConfig.calWidthMultiplier(55),
              margin: EdgeInsets.symmetric(
                  vertical: SizeConfig.calHeightMultiplier(100)),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(logoBlackkAssets)),
              ),
            ),

            //* title
            Text(
              'Join Us to Unlock\nYour Growth',
              style: TextStyle(
                fontSize: SizeConfig.calMultiplierText(20),
                fontWeight: FontWeight.w600,
              ),
            ),
            formRegister(),
            Padding(
              padding:
                  EdgeInsets.only(bottom: SizeConfig.calHeightMultiplier(58)),
              child: Center(
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      color: btnSecoundryColor,
                      fontSize: SizeConfig.calMultiplierText(16),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container formRegister() {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: SizeConfig.calHeightMultiplier(22),
          horizontal: SizeConfig.calWidthMultiplier(22)),
      margin: EdgeInsets.only(
        top: SizeConfig.calHeightMultiplier(30),
        bottom: SizeConfig.calHeightMultiplier(50),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //* fullname
            Text(
              'Full Name',
              style: TextStyle(
                fontSize: SizeConfig.calMultiplierText(14),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: SizeConfig.calHeightMultiplier(8),
            ),
            TextFormFieldAuth(
              errorText: 'Fullname required',
              suffix: SizedBox.shrink(),
              controller: fullnameController,
              keyboardType: TextInputType.name,
              obscureText: false,
            ),
            SizedBox(
              height: SizeConfig.calHeightMultiplier(16),
            ),
            //* email
            Text(
              'Email',
              style: TextStyle(
                fontSize: SizeConfig.calMultiplierText(14),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: SizeConfig.calHeightMultiplier(8),
            ),
            TextFormFieldAuth(
              errorText: 'Email required',
              suffix: SizedBox.shrink(),
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
            ),
            SizedBox(
              height: SizeConfig.calHeightMultiplier(16),
            ),
            //* password
            Text(
              'Password',
              style: TextStyle(
                fontSize: SizeConfig.calMultiplierText(14),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: SizeConfig.calHeightMultiplier(8),
            ),
            TextFormFieldAuth(
              errorText: 'Password required',
              suffix: GestureDetector(
                onTap: () {
                  toogleEye();
                },
                child: isObscurePassword
                    ? const Icon(FluentIcons.eye_24_regular)
                    : const Icon(FluentIcons.eye_off_24_regular),
              ),
              controller: passwordController,
              keyboardType: TextInputType.text,
              obscureText: isObscurePassword,
            ),
            SizedBox(
              height: SizeConfig.calHeightMultiplier(30),
            ),
            BtnPrimary(
              title: 'Continue',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
