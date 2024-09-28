import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_portofolio/globals/app_assets.dart';
import 'package:flutter_portofolio/globals/app_colors.dart';
import 'package:flutter_portofolio/globals/app_text_styles.dart';
import 'package:flutter_portofolio/globals/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColors,
      appBar: AppBar(
        backgroundColor: AppColors.bgColors,
        toolbarHeight: 80,
        titleSpacing: 90,
        elevation: 0,
        title: Row(
          children: [
            const Text(
              'Portfolio',
              style: TextStyle(color: Colors.white),
            ),
            const Spacer(),
            Text(
              'Home',
              style: AppTextStyles.headerTextStyle(),
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              'About',
              style: AppTextStyles.headerTextStyle(),
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              'Services',
              style: AppTextStyles.headerTextStyle(),
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              'Portfolio',
              style: AppTextStyles.headerTextStyle(),
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              'Contact',
              style: AppTextStyles.headerTextStyle(),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
            top: size.height * 0.3,
            left: size.height * 0.2,
            right: size.height * 0.2),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Halo, Perkenalkan Saya',
                      style: AppTextStyles.montserratStyle(color: Colors.white),
                    ),
                    Constants.sizedBox(height: 10),
                    Text(
                      'Syauqi Parma Ramadhan',
                      style: AppTextStyles.headingStyles(),
                    ),
                    Constants.sizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'Dan saya adalah seorang ',
                          style: AppTextStyles.montserratStyle(
                              color: Colors.white),
                        ),
                        AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText('Flutter Developer',
                                textStyle: AppTextStyles.montserratStyle(
                                    color: Colors.lightBlue)),
                            TyperAnimatedText('Mobile Developer',
                                textStyle: AppTextStyles.montserratStyle(
                                    color: Color(0xff3EDC85))),
                          ],
                          // totalRepeatCount: 4,
                          pause: const Duration(milliseconds: 1000),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                        ),
                      ],
                    ),
                    Constants.sizedBox(height: 15),
                    SizedBox(
                      width: size.width * 0.5,
                      child: Text(
                        'Lorem, ipsum dolor sit amet consectetur adipisicing elit. '
                        'Inventore, magni veniam laborum aspernatur et officiis eos placeat in non architecto quisquam molestias ullam enim doloremque pariatur ducimus, '
                        'dolores minus exercitationem facilis dolorum ex dolorem iure.',
                        style: AppTextStyles.normalStyle(),
                      ),
                    ),
                    Constants.sizedBox(height: 25),
                    Row(
                      children: [
                        buildSocialButton(asset: AppAssets.instagram),
                        Constants.sizedBox(width: 20),
                        buildSocialButton(asset: AppAssets.github),
                        Constants.sizedBox(width: 20),
                        buildSocialButton(asset: AppAssets.linkedIn),
                      ],
                    ),
                    Constants.sizedBox(height: 20),
                    buildMaterialButton(onTap: () {}),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  MaterialButton buildMaterialButton({required VoidCallback onTap}) {
    return MaterialButton(
      onPressed: onTap,
      color: AppColors.themeColors,
      splashColor: AppColors.lawGreen,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
      hoverColor: AppColors.aqua,
      height: 45,
      minWidth: 130,
      focusElevation: 12,
      child: Text(
        'Download CV',
        style: AppTextStyles.headerTextStyle(),
      ),
    );
  }

  Ink buildSocialButton({required String asset}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.themeColors, width: 3.0),
          color: AppColors.bgColors,
          shape: BoxShape.circle),
      padding: EdgeInsets.all(6),
      child: InkWell(
        borderRadius: BorderRadius.circular(50.0),
        hoverColor: AppColors.aqua,
        splashColor: AppColors.lawGreen,
        onTap: () {},
        child: Image.asset(
          asset,
          width: 20,
          height: 24,
          color: AppColors.themeColors,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
