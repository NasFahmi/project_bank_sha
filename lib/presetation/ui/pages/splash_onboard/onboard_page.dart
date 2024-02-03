import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_bank_sha/config/common/image_assets.dart';
import 'package:project_bank_sha/config/common/screen.dart';
import 'package:project_bank_sha/config/theme/theme.dart';
import 'package:project_bank_sha/presetation/ui/widgets/onboard_continue.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => OnboardPageState();
}

class OnboardPageState extends State<OnboardPage> {
  List<String> title = [
    'Grow Your\nFinancial Today',
    'Build From\nZero to Freedom',
    'Start Together'
  ];
  List<String> subtitle = [
    'Our system is helping you to\nachieve a better goal',
    'We provide tips for you so that\nyou can adapt easier',
    'We will guide you to where\nyou wanted it too'
  ];
  CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    /**
     * final widthScreen = MediaQuery.of(context).size.width;
    * final heighScreen = MediaQuery.of(context).size.height;
    * final scale = mockupWidth / widthScreen;
    * final textScaleFactor = widthScreen / mockupWidth;
     */

    return Scaffold(
      backgroundColor: grayBackgroundColorOnboard,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                  // top: 4.75 *
                  //     SizeConfig
                  //         .heightMultiplier!, //disini heighnya adlaah 8.44 dimana 8.44* 4.75 kruang lebih 40
                  top: SizeConfig.calHeightMultiplier(40),
                ),
                child: CarouselSlider(
                  items: [
                    Image(
                      image: AssetImage(
                        imageOnboard1,
                      ),
                      fit: BoxFit.fill,
                    ),
                    Image(
                      image: AssetImage(imageOnboard2),
                      fit: BoxFit.fill,
                    ),
                    Image(
                      image: AssetImage(imageOnboard3),
                      fit: BoxFit.fill,
                    ),
                  ],
                  options: CarouselOptions(
                    autoPlay: false,
                    // height:
                    //     39 * SizeConfig.heightMultiplier!, //39* 8,44 adalah 331
                    height: SizeConfig.calHeightMultiplier(320),
                    viewportFraction: 1,
                    initialPage: currentIndex,
                    enableInfiniteScroll: false,
                    aspectRatio: 1.0,
                    onPageChanged: (index, reason) {
                      print(index); //!index adalah index dari item di carousel
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                  carouselController: carouselController,
                ),
              ),
            ),
            CardCarousel()
          ],
        ),
      ),
    );
  }

  //! cara agar ketika membuat container yang memiliki width dan heigh didalamnya responsive adalah di wrap menggunakan Flexible widget
  //! ketika ingin membagi widget sama rata, atau tidak memperdulikan width dan heigh didalamnya bisa menggunakan expanded
  Flexible CardCarousel() {
    return Flexible(
      child: Container(
        width: double.infinity,
        // height: 34.75 * SizeConfig.heightMultiplier!,
        height: SizeConfig.calHeightMultiplier(280),
        margin: EdgeInsets.symmetric(horizontal: 16),
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(29),
          color: whiteColor,
        ),
        child: Column(
          children: [
            Text(
              title[currentIndex],
              // textScaler: TextScaler.linear(
              //     MediaQuery.of(context).size.width / mockupWidth),
              style: TextStyle(
                fontSize: SizeConfig.calMultiplierText(20),
                color: tittleColorFont,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: SizeConfig.calHeightMultiplier(26),
            ),
            Text(
              subtitle[currentIndex],
              // textScaler: TextScaler.linear(
              //     MediaQuery.of(context).size.width / mockupWidth),
              style: TextStyle(
                fontSize: SizeConfig.calMultiplierText(16),
                color: secoundaryColorFont,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: currentIndex != 2 ? 50 : 38,
            ),
            currentIndex != 2
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentIndex == 0
                                    ? blueColorCarousel
                                    : grayColorCarousel,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentIndex == 1
                                    ? blueColorCarousel
                                    : grayColorCarousel,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentIndex == 2
                                    ? blueColorCarousel
                                    : grayColorCarousel,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: OnboardContinue(
                          title: 'Continue',
                          onPressed: () {
                            carouselController
                                .nextPage(); //! ini digunakan untuk next page dari carouselnya
                          },
                        ),
                      )
                    ],
                  )
                : Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OnboardContinue(
                          title: 'Get Started',
                          onPressed: () {},
                        ),
                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              color: btnSecoundryColor,
                              fontSize: SizeConfig.calMultiplierText(16),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
