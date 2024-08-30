import 'package:comfylux/Auth/login_view/login_view.dart';
import 'package:comfylux/Auth/login_view/signup_view.dart';
import 'package:comfylux/const/assets/image_assets.dart';
import 'package:comfylux/const/color.dart';
import 'package:comfylux/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashOne extends StatelessWidget {
  const SplashOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,

      body: Stack(
        clipBehavior: Clip.none,
        children: [
          // Background image
          // Positioned.fill(
          //   bottom: 500,
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: Colors.red,
          //         gradient: LinearGradient(
          //             begin: Alignment.topCenter,
          //             end: Alignment.bottomCenter,
          //             colors: [
          //           Color(0xffD9D9D9),
          //           Color(0xffE8E8E8).withOpacity(0.45),
          //           Color(0xffFFFFFF)
          //         ])),
          //     height: 250,
          //     width: 250,
          //     child: Image.asset(
          //       AppImages.pattern, // Add your background image path here
          //       fit: BoxFit
          //           .cover, // This will make the image cover the entire screen
          //     ),
          //   ),
          // ),

          // Foreground content
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   height: 277.h,
              // ),
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
              SizedBox(
                height: 63.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {

                    return LoginView();
                  }));
                },
                child: Container(
                  width: 300.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: primaryColor),
                  child: Center(
                      child: MontserratCustomText(
                    text: 'Login',
                    textColor: textColor,
                    fontWeight: FontWeight.w500,
                    fontsize: 25.sp,
                  )),
                ),
              ),
              SizedBox(
                height: 17.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {

                    return SignupView();
                  }));
                },
                child: Container(
                  width: 300.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(color: goldcolor, width: 1)),
                  child: Center(
                      child: MontserratCustomText(
                    text: 'Signup',
                    textColor: primaryColor,
                    fontWeight: FontWeight.w500,
                    fontsize: 25.sp,
                  )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
