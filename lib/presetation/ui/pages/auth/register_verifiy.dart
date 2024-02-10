import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:project_bank_sha/config/common/image_assets.dart';
import 'package:project_bank_sha/config/common/screen.dart';
import 'package:project_bank_sha/config/routes/Route.dart';
import 'package:project_bank_sha/config/theme/theme.dart';
import 'package:project_bank_sha/presetation/ui/pages/auth/register_profile.dart';
import 'package:project_bank_sha/presetation/ui/widgets/btn_primary.dart';

class RegisterVerifyPage extends StatefulWidget {
  const RegisterVerifyPage({super.key});

  @override
  State<RegisterVerifyPage> createState() => _RegisterVerifyPageState();
}

class _RegisterVerifyPageState extends State<RegisterVerifyPage> {
  File? imageFile;
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
              'Join Us to Unlock\nYour Growth',
              style: TextStyle(
                fontSize: SizeConfig.calMultiplierText(20),
                fontWeight: FontWeight.w600,
              ),
            ),
            changeProfile(),
            Padding(
              padding:
                  EdgeInsets.only(bottom: SizeConfig.calHeightMultiplier(58)),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(routeRegisterPin);
                  },
                  child: Text(
                    'Skip for Now',
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

  Container changeProfile() {
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Verifiy Your Account',
            style: TextStyle(
              color: tittleColorFont,
              fontSize: SizeConfig.calMultiplierText(16),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: SizeConfig.calWidthMultiplier(20),
          ),
          imageFile == null
              ? GestureDetector(
                  onTap: () async {
                    final file = await imageHelper.pickImage();
                    if (file != null) {
                      final croppedFile = await imageHelper.crop(
                        file: file,
                        cropStyle: CropStyle.rectangle,
                      );
                      if (croppedFile != null) {
                        setState(() {
                          imageFile = File(croppedFile.path);
                        });
                      }
                    }
                  },
                  child: Container(
                    width: SizeConfig.calHeightMultiplier(120),
                    height: SizeConfig.calHeightMultiplier(120),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: grayBackgroundColorOnboard,
                    ),
                    child: Center(
                      child: Image(
                        fit: BoxFit.cover,
                        width: SizeConfig.calWidthMultiplier(32),
                        image: AssetImage(
                          icUploadProfile,
                        ),
                      ),
                    ),
                  ),
                )
              : GestureDetector(
                  onTap: () async {
                    final file = await imageHelper.pickImage();
                    if (file != null) {
                      final croppedFile = await imageHelper.crop(
                        file: file,
                        cropStyle: CropStyle.rectangle,
                      );
                      if (croppedFile != null) {
                        setState(() {
                          imageFile = File(croppedFile.path);
                        });
                      }
                    }
                  },
                  child: Container(
                    width: SizeConfig.calHeightMultiplier(120),
                    height: SizeConfig.calHeightMultiplier(120),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: grayBackgroundColorOnboard,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: FileImage(imageFile!),
                      ),
                    ),
                  ),
                ),
          SizedBox(
            height: SizeConfig.calHeightMultiplier(16),
          ),
          Text(
            'Passport/Id Card',
            style: TextStyle(
              fontSize: SizeConfig.calMultiplierText(18),
              color: tittleColorFont,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: SizeConfig.calHeightMultiplier(30),
          ),
          BtnPrimary(
            title: 'Continue',
            onPressed: () {
              Navigator.of(context).pushNamed(routeRegisterPin);
            },
          )
        ],
      ),
    );
  }
}
