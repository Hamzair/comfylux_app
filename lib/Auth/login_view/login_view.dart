import 'package:comfylux/Auth/login_view/signup_view.dart';
import 'package:comfylux/const/assets/image_assets.dart';
import 'package:comfylux/const/color.dart';
import 'package:comfylux/widgets/custom_text.dart';
import 'package:comfylux/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: whiteColor,
        body: SingleChildScrollView(
          clipBehavior: Clip.none,
          child: Column(
            children: [
              SizedBox(
                height: 100.h,
              ),
              Center(
                child: Image.asset(
                  AppImages.logo,
                  height: 94.h,
                  width: 182.w,
                ),
              ),
              PoppinsCustomText(
                text: 'comfort meets luxury',
                textColor: primaryColor,
                fontWeight: FontWeight.w300,
                fontsize: 15.sp,
              ),
              SizedBox(
                height: 70.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 43.w),
                child: InputField(
                  label: 'Email',
                  keyboard: TextInputType.name,
                  hint: 'email',
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 43.w),
                child: PasswordField(
                  label: 'password',
                  hint: 'password',
                  keyboard: TextInputType.text,

                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              MontserratAlternateCustomText(
                text: 'Forgot password?',
                textColor: goldcolor,
                fontWeight: FontWeight.w500,
                fontsize: 15.sp,
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                width: 304.w,
                height: 49.h,
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
              SizedBox(
                height: 23.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {

                    return SignupView();
                  }));
                },
                child: MontserratAlternateCustomText(
                  text: 'Create new account',
                  textColor: Color(0xff708090),
                  fontWeight: FontWeight.w500,
                  fontsize: 15.sp,
                ),
              ),
              SizedBox(
                height: 52.h,
              ),
              MontserratAlternateCustomText(
                text: 'or Continue with',
                textColor: goldcolor,
                fontWeight: FontWeight.w500,
                fontsize: 15.sp,
              ),
              SizedBox(
                height: 17,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.google,
                    height: 45.h,
                    width: 45.w,
                  ),
                  SizedBox(width: 10.w,),
                  Image.asset(
                    AppImages.facebook,
                    height: 45.h,
                    width: 45.w,
                  ),
                  SizedBox(width: 10.w,),

                  Image.asset(
                    AppImages.twitter,
                    height: 45.h,
                    width: 45.w,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              // Container(
              //
              //   height: 130,
              //   // color: Colors.red,
              //   child: Stack(
              //     clipBehavior: Clip.none,
              //     children: [
              //       SizedBox(
              //           width: double.infinity,
              //           child: Image.asset(
              //             AppImages.pattern2,
              //             fit: BoxFit.cover,
              //           )),
              //       Container(
              //         height: 100,
              //         decoration: BoxDecoration(
              //           // color: Colors.red,
              //           backgroundBlendMode: BlendMode.overlay,
              //           gradient: LinearGradient(
              //               begin: Alignment.bottomCenter,
              //               end: Alignment.topCenter,
              //               colors: [
              //                 Color(0xffD9D9D9),
              //                 Color(0xffE8E8E8).withOpacity(0.40),
              //                 Color(0xffFFFFFF)
              //               ]),
              //         ),
              //       )
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
