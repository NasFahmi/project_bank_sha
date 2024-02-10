import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:project_bank_sha/config/common/image_assets.dart';
import 'package:project_bank_sha/config/common/screen.dart';
import 'package:project_bank_sha/config/routes/Route.dart';
import 'package:project_bank_sha/config/theme/theme.dart';
import 'package:project_bank_sha/presetation/ui/widgets/btn_primary.dart';
import 'package:project_bank_sha/presetation/ui/widgets/textformfield_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isObscurePassword = true;

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
              margin: EdgeInsets.only(
                bottom: SizeConfig.calHeightMultiplier(100),
                top: SizeConfig.calHeightMultiplier(80),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(logoBlackkAssets)),
              ),
            ),

            //* title
            Text(
              'Sign in &\nGrowth Your Finance',
              style: TextStyle(
                fontSize: SizeConfig.calMultiplierText(20),
                fontWeight: FontWeight.w600,
              ),
            ),
            formLogin(),
            Padding(
              padding:
                  EdgeInsets.only(bottom: SizeConfig.calHeightMultiplier(58)),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(routeRegister);
                  },
                  child: Text(
                    'Create New Account',
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

  Container formLogin() {
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
              height: SizeConfig.calHeightMultiplier(8),
            ),
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: SizeConfig.calMultiplierText(14),
                    color: blueColorCarousel,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.calHeightMultiplier(30),
            ),
            BtnPrimary(
              title: 'Continue',
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save(); // Save the form data
                  print(emailController.text);
                  print(passwordController.text);
                  // Your registration logic or other actions
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
