import 'package:comfylux/const/assets/image_assets.dart';
import 'package:comfylux/const/color.dart';
import 'package:comfylux/controller/home_controller.dart';
import 'package:comfylux/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeDetailScreen extends StatefulWidget {
  const HomeDetailScreen({super.key});

  @override
  State<HomeDetailScreen> createState() => _HomeDetailScreenState();
}

class _HomeDetailScreenState extends State<HomeDetailScreen> {
  final HomeController homeController = Get.put(HomeController());

  final PageController _pageController = PageController(viewportFraction: 1);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<String> sizes = [
    '6',
    '6.5',
    '7',
    '7.5',
    '8',
    '8.5',
    '9',
    '9.6',
    '10',
    '10.5',
    '11',
    '12',
  ];
  final List<String> images = [
    AppImages.shoe,
    AppImages.shoe,
    AppImages.shoe,
  ];
  late String selectedSize = '6';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: goldcolor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 366.h,
                child: PageView.builder(
                  controller: _pageController,
                  // padEnds: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Container(
                        height: 366.h,
                        width: 369.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(color: goldcolor, width: 1),
                        ),
                        child: Image.asset(
                          images[index],
                          scale: 2,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SmoothPageIndicator(
                controller: _pageController,
                count: images.length,
                effect: ScaleEffect(
                  dotHeight: 8,
                  activeDotColor: goldcolor,
                  dotColor: goldcolor.withOpacity(0.5),
                  dotWidth: 8,
                ),
                // effect: const WormEffect(
                //   dotHeight: 10,
                //   activeDotColor: primaryColor,
                //   dotWidth: 10,
                //   type: WormType.underground,
                // ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MontserratCustomText(
                      text: 'Nike Air Max',
                      textColor: primaryColor,
                      fontWeight: FontWeight.w700,
                      fontsize: 26.sp,
                    ),
                    MontserratCustomText(
                      text: 'Rs. 1850',
                      textColor: primaryColor,
                      fontWeight: FontWeight.w500,
                      fontsize: 21.sp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: MontserratAlternateCustomText(
                  text:
                      'Its high-temp color palette melds gradient hues with glossy black accents for style that sizzles. Plus',
                  textColor: primaryColor,
                  fontWeight: FontWeight.w400,
                  fontsize: 15.sp,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Wrap(
                spacing: 12.w, // space between items
                runSpacing: 10.h, // space between rows
                children: sizes.map((size) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedSize = size; // Set the selected size
                      });
                    },
                    child: Container(
                      width: 47.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                          color: size == selectedSize
                              ? Colors.transparent
                              : goldcolor, // Highlight selected size
                          width: size == selectedSize ? 2.w : 1.w,
                        ),
                        color: size == selectedSize
                            ? goldcolor
                            : Colors
                                .transparent, // Highlight background color for selected size
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MontserratCustomText(
                              text: size,
                              textColor: size == selectedSize
                                  ? whiteColor
                                  : primaryColor, // Change as needed
                              fontWeight: FontWeight.w400,
                              fontsize: 15.sp,
                            ),
                            if (size == selectedSize)
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                                child: Divider(
                                  height: 1.h,

                                  thickness: 2.h,
                                  color: whiteColor, // Divider color
                                  indent: 1.w,
                                  endIndent: 1.w,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 33.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 260.w,
                    height: 77.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: primaryColor),
                    child: Center(
                        child: MontserratCustomText(
                      text: 'Add to Cart',
                      textColor: textColor,
                      fontWeight: FontWeight.w500,
                      fontsize: 18.sp,
                    )),
                  ),
                  GestureDetector(
                    onTap: () {
                      homeController.isFavorite.value =
                          !homeController.isFavorite.value;
                    },
                    child: Obx(() => Container(
                          width: 77.w,
                          height: 77.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Color(0xffF7E7CE),
                          ),
                          child: Icon(
                            homeController.isFavorite.value
                                ? Icons.favorite
                                : Icons.favorite_border_outlined,
                            color: primaryColor,
                            size: 30,
                          ),
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
