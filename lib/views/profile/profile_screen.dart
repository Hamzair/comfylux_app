import 'package:comfylux/Auth/login_view/login_view.dart';
import 'package:comfylux/const/assets/image_assets.dart';
import 'package:comfylux/const/color.dart';
import 'package:comfylux/views/profile/edit_profile.dart';
import 'package:comfylux/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: MontserratCustomText(
                        text: 'PROFILE',
                        textColor: whiteColor,
                        fontWeight: FontWeight.w700,
                        fontsize: 25.sp,
                      ),
                    ),
                  ],
                ),
                Positioned(
                    top: 95.h,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(AppImages.profile),
                      radius: 65,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 100.h,
          ),
          MontserratCustomText(
            text: 'TAYYAB SAEED',
            textColor: primaryColor,
            fontWeight: FontWeight.w700,
            fontsize: 17.sp,
          ),
          SizedBox(
            height: 23.h,
          ),
          CustomProfileButton(
            text: 'Edit Profile',
            iconPath: AppImages.profileIcon,
            textColor: primaryColor,
            iconColor: primaryColor,
            iconScale: 6,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return EditProfile();
              }));
            },
          ),
          SizedBox(
            height: 18.h,
          ),
          CustomProfileButton(
            text: 'Change Password',
            iconPath: AppImages.changepassword,
            textColor: primaryColor,
            iconColor: primaryColor,
            iconScale: 6,
            onTap: () {
              // Handle the tap event
            },
          ),
          SizedBox(
            height: 23.h,
          ),
          CustomProfileButton(
            text: 'Favourites',
            iconPath: AppImages.favourite,
            textColor: primaryColor,
            iconColor: primaryColor,
            iconScale: 6,
            onTap: () {
              // Handle the tap event
            },
          ),
          SizedBox(
            height: 23.h,
          ),
          CustomProfileButton(
            text: 'Settings',
            iconPath: AppImages.settings,
            textColor: primaryColor,
            iconColor: primaryColor,
            iconScale: 6,
            onTap: () {
              // Handle the tap event
            },
          ),
          SizedBox(
            height: 18.h,
          ),
          GestureDetector(
            // onTap: () {
            //   Navigator.push(context, MaterialPageRoute(builder: (context) {
            //     return LoginView();
            //   }));
            // },
            child: Container(
              width: 162.w,
              height: 51.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
                color: primaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.logout,
                    width: 28.w,
                    height: 23.h,
                  ),
                  MontserratCustomText(
                    text: 'Logout',
                    textColor: whiteColor,
                    fontWeight: FontWeight.w700,
                    fontsize: 17.sp,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomProfileButton extends StatelessWidget {
  final String text;
  final String iconPath;
  final Color textColor;
  final Color iconColor;
  final double iconScale;
  final VoidCallback onTap;

  const CustomProfileButton({
    Key? key,
    required this.text,
    required this.iconPath,
    required this.textColor,
    required this.iconColor,
    required this.iconScale,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 360.w,
        height: 60.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: goldcolor, width: 1),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 17.w,
            ),
            Image.asset(
              iconPath,
              color: iconColor,
              scale: iconScale,
            ),
            SizedBox(
              width: 17.w,
            ),
            MontserratCustomText(
              text: text,
              textColor: textColor,
              fontWeight: FontWeight.w600,
              fontsize: 16.sp,
            ),
          ],
        ),
      ),
    );
  }
}
