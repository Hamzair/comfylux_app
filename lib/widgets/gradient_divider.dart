// ignore_for_file: deprecated_member_use

import 'package:comfylux/const/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientDivider extends StatelessWidget {
  final double height;

  const GradientDivider({
    super.key,
    this.height = 1.3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [whiteColor, goldcolor, whiteColor.withOpacity(0.1)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      height: height.h,
    );
  }
}

