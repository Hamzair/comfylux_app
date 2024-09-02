import 'package:comfylux/const/assets/image_assets.dart';
import 'package:comfylux/const/color.dart';
import 'package:comfylux/controller/user_controller.dart';
import 'package:comfylux/widgets/custom_text.dart';
import 'package:comfylux/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Column(
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
                        text: 'EDIT PROFILE',
                        textColor: whiteColor,
                        fontWeight: FontWeight.w700,
                        fontsize: 25.sp,
                      ),
                    ),
                  ],
                ),
                userController.imageFile != null
                    ? Container(
                        height: 106.78.h,
                        width: 106.78.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                            image: DecorationImage(
                                image: FileImage(userController.imageFile!
                                    // height: 14.h,
                                    // width: 26.w,
                                    ),
                                fit: BoxFit.cover)),
                      )
                    :
                          Positioned(
                              top:80.h,
                              child: CircleAvatar(
                                radius: 70,
backgroundColor: Colors.transparent,
                                child: Stack(
                                  clipBehavior:Clip.none ,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(AppImages.profile),
                                      radius: 50,
                                    ),
                                    Positioned(
                                      right: 0,bottom: 0,

                                      child: GestureDetector(
                                          onTap: () {
                                            userController.pickImage();
                                          },
                                          child: Image.asset(
                                            AppImages.cameraicon,
                                            height: 36.h,
                                            width: 36.w,
                                          ),
                                        ),
                                    ),

                                  ],
                                ),
                              )),


                // Positioned(
                //   left: 210.w,
                //   top: 160.h,
                //   child: GestureDetector(
                //     onTap: () {
                //       userController.pickImage();
                //     },
                //     child: Image.asset(
                //       AppImages.cameraicon,
                //       height: 36.h,
                //       width: 36.w,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          SizedBox(
            height: 120.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 45.w),
            child: InputField(
              hintStyle: TextStyle(color: Colors.grey),
              label: 'Name',
              keyboard: TextInputType.name,
              hint: 'Enter your name',
            ),
          ),
          SizedBox(
            height: 18.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 45.w),
            child: InputField(
              hintStyle: TextStyle(color: Colors.grey),
              label: 'Email',
              keyboard: TextInputType.name,
              hint: 'Enter your email address',
            ),
          ),
          SizedBox(
            height: 18.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 45.w),
            child: InputField(
              hintStyle: TextStyle(color: Colors.grey),
              label: 'Change Number',
              keyboard: TextInputType.name,
              hint: 'Enter your number',
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
    );
  }
}
