import 'package:flutter/material.dart';
import 'package:flutter_portofolio/globals/app_colors.dart';
import 'package:flutter_portofolio/globals/app_text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColors,
      appBar: AppBar(
        backgroundColor: AppColors.bgColors,
        toolbarHeight: 80,
        titleSpacing: 90,
        elevation: 2,
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
    );
  }
}
