import 'dart:async';
import 'package:comfylux/Auth/login_view/signup_view.dart';
import 'package:comfylux/const/assets/image_assets.dart';
import 'package:comfylux/const/color.dart';
import 'package:comfylux/splash/splash_one.dart';
import 'package:comfylux/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                SplashOne()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Center(
            child: Image.asset(
              AppImages.logo,
              height: 131.h,
              width: 253.w,
            ),
          ),
          PoppinsCustomText(
            text: 'comfort meets luxury',
            textColor: primaryColor,
            fontWeight: FontWeight.w300,
            fontsize: 20.sp,
          ),
          Spacer(),
          Image.asset(
            AppImages.cart,
            height: 39.h,
            width: 39.w,
          ),
          SizedBox(
            height: 7.h,
          ),
          PoppinsCustomText(
            text: 'shop more with comfylux',
            textColor: primaryColor,
            fontWeight: FontWeight.w300,
            fontsize: 20.sp,
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
