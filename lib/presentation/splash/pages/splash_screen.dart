import 'package:ecommerce/core/configs/assets/app_vectors.dart';
import 'package:ecommerce/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
          child: SvgPicture.asset(AppVectors.applogo),
      ),
    );
  }
}