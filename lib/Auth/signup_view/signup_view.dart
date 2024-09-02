import 'package:comfylux/Auth/login_view/login_view.dart';
import 'package:comfylux/const/assets/image_assets.dart';
import 'package:comfylux/const/color.dart';
import 'package:comfylux/widgets/custom_text.dart';
import 'package:comfylux/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();

      },
      child: Scaffold(
        backgroundColor: whiteColor,
          body: SingleChildScrollView(

        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 43.w),

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
              SizedBox(
                height: 20.h,
              ),
              MontserratCustomText(
                text: 'Create new account',
                textColor: primaryColor,
                fontWeight: FontWeight.w700,
                fontsize: 25.sp,
              ),

              SizedBox(
                height: 20.h,
              ),
              InputField(
                hintStyle: TextStyle(color: Colors.grey),

                label: 'Name',
                keyboard: TextInputType.name,
                hint: 'Enter your name',
              ),
              SizedBox(
                height: 20.h,
              ),
              InputField(
                hintStyle: TextStyle(color: Colors.grey),

                label: 'Email',
                keyboard: TextInputType.name,
                hint: 'Enter your email address',
              ),
              SizedBox(
                height: 20.h,
              ),
              InputField(
                hintStyle: TextStyle(color: Colors.grey),

                label: 'Phone number',
                keyboard: TextInputType.name,
                hint: 'Enter phone number',
              ),
              SizedBox(
                height: 20.h,
              ),
              PasswordField(
                hintStyle: TextStyle(color: Colors.grey),

                label: 'Password',
                hint: 'Enter your password',
                keyboard: TextInputType.text,


              ),
              SizedBox(
                height: 20.h,
              ),
              PasswordField(
                hintStyle: TextStyle(color: Colors.grey),

                label: 'Confirm Password',
                hint: 'Enter your confirm password',
                keyboard: TextInputType.text,

              ),

              SizedBox(
                height: 30.h,
              ),
              Container(
                width: 300.w,
                height: 60.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r), color: goldcolor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    SizedBox(
                      width: 15,
                    ),
                    Center(
                        child: MontserratCustomText(
                      text: 'SIGN UP',
                      textColor: primaryColor,
                      fontWeight: FontWeight.w500,
                      fontsize: 18.sp,
                    )),
                    Spacer(),
                    Image.asset(
                      AppImages.arrow,
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(
                      width: 5,
                    )
                  ],
                ),
              ),
              SizedBox(height: 18.h,),
              GestureDetector(
                onTap: () {

                    Navigator.push(context, MaterialPageRoute(builder: (context) {

                      return LoginView();
                    }));

                },
                child: MontserratCustomText(
                  text: 'Already have an account',
                  textColor: primaryColor,
                  fontWeight: FontWeight.w500,
                  fontsize: 15.sp,
                ),
              ),
              SizedBox(height: 18.h,),

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
      )),
    );
  }
}
