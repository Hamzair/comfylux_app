import 'package:comfylux/splash/Splash_screen.dart';
import 'package:comfylux/splash/splash_one.dart';
import 'package:comfylux/views/profile/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (_, child) {
          return GetMaterialApp(
            title: 'Comfylux',
            debugShowCheckedModeBanner: false,
            home: const SplashScreen(),
            // initialBinding: UserBinding(),
          );
        });
  }
}
