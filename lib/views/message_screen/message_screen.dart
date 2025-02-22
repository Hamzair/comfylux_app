// ignore_for_file: deprecated_member_use

import 'package:comfylux/const/color.dart';
import 'package:comfylux/widgets/custom_text.dart';
import 'package:comfylux/widgets/gradient_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 366.w,
            height: 50.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: TextField(
                onChanged: (val) {},
                style: GoogleFonts.montserratAlternates(
                    textStyle: TextStyle(
                        color: whiteColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w200)),
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: whiteColor,
                    size: 26,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: goldcolor,
                  filled: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  hintText: 'Search',
                  hintStyle: GoogleFonts.montserratAlternates(
                      textStyle: TextStyle(
                          color: whiteColor.withOpacity(0.6),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          const GradientDivider(),
          SizedBox(height: 20.h),
          Expanded(
            child: ListView.separated(
              itemCount: 5,
              separatorBuilder: (context, index) => const GradientDivider(),
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    debugPrint('Tapped'); 
                  },
                  leading: const CircleAvatar(
                    backgroundColor: goldcolor,
                    child: Icon(
                      Icons.person,
                      color: whiteColor,
                    ),
                  ),
                  title: Text(
                    'John Doe',
                    style: GoogleFonts.montserrat(
                      color: primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp,
                    ),
                  ),
                  subtitle: Text(
                    'Last message preview here...',
                    style: GoogleFonts.montserrat(
                      color: lightColor,
                      fontSize: 14.sp,
                    ),
                  ),
                  trailing: Text(
                    '12:00 PM',
                    style: GoogleFonts.montserrat(
                      color: lightColor,
                      fontSize: 12.sp,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
