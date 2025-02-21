import 'package:comfylux/const/assets/image_assets.dart';
import 'package:comfylux/const/color.dart';
import 'package:comfylux/widgets/custom_text.dart';
import 'package:comfylux/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();

      },

      child: Scaffold(
        backgroundColor: whiteColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 6.w),
                width: 378.w,
                height: 136.h,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15.w, top: 15.h),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: goldcolor,
                        ),
                      ),
                    ),
                    Center(
                      child: MontserratCustomText(
                        text: 'Change Password',
                        textColor: whiteColor,
                        fontWeight: FontWeight.w700,
                        fontsize: 25.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 26.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 43.w),
                child: PasswordField(
                  hintStyle: TextStyle(color: Colors.grey),
                  label: 'Old Password',
                  hint: 'Enter your password',
                  keyboard: TextInputType.text,
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 43.w),
                child: PasswordField(
                  hintStyle: TextStyle(color: Colors.grey),
                  label: 'New Password',
                  hint: 'Enter your password',
                  keyboard: TextInputType.text,
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 43.w),
                child: PasswordField(
                  hintStyle: TextStyle(color: Colors.grey),
                  label: 'Confirm Password',
                  hint: 'Enter your password',
                  keyboard: TextInputType.text,
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 45.w),
                width: 300.w,
                height: 60.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: goldcolor,
                ),
                child: Center(
                  child: MontserratCustomText(
                    text: 'Update',
                    textColor: primaryColor,
                    fontWeight: FontWeight.w600,
                    fontsize: 20.sp,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
