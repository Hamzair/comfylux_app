import 'package:comfylux/const/assets/image_assets.dart';
import 'package:comfylux/const/color.dart';
import 'package:comfylux/controller/home_controller.dart';
import 'package:comfylux/views/home_screen_view/home_detail_screen.dart';
import 'package:comfylux/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masonry_view/flutter_masonry_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController homeController = Get.put(HomeController());

  // List of product items
  final List<Map<String, dynamic>> productList = [
    {
      'image': AppImages.shoe,
      'name': 'Nike Shoes',
      'price': 'Rs. 1850',
    },
    {
      'image': AppImages.shoe,
      'name': 'Adidas Sneakers',
      'price': 'Rs. 2250',
    },
    {
      'image': AppImages.shoe,
      'name': 'Puma Running',
      'price': 'Rs. 1950',
    },
    {
      'image': AppImages.shoe,
      'name': 'Reebok Classic',
      'price': 'Rs. 1750',
    },
  ];

  final catagory = [
    'All',
    'Home',
    'Products',
    'Services',
    'About Us',
    'Contact Us',
    'Contact Us',
    'Contact Us',
    'Contact Us',
  ];

  final List<String> images = [
    AppImages.comfylux,
    AppImages.comfylux,
    AppImages.comfylux,
    AppImages.comfylux,
    AppImages.comfylux,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        toolbarHeight: 120.h,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  AppImages.drawer,
                  height: 40.h,
                  width: 44.w,
                ),
                Image.asset(
                  AppImages.comfylux,
                  height: 31.h,
                  width: 185.w,
                ),
                Image.asset(
                  AppImages.cartIcon1,
                  height: 40.h,
                  width: 44.w,
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              width: 366.w,
              height: 50.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: TextField(
                  onChanged: (val) {},
                  style: GoogleFonts.montserratAlternates(
                      textStyle: TextStyle(
                          color: primaryColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400)),
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      color: primaryColor,
                      size: 35,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: goldcolor,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: goldcolor,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                      borderSide: BorderSide(color: goldcolor, width: 2),
                    ),
                    fillColor: whiteColor,
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    hintText: 'Search',
                    hintStyle: GoogleFonts.montserratAlternates(
                        textStyle: TextStyle(
                            color: Color(0xff000000).withOpacity(0.33),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: whiteColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            SizedBox(
              height: 200.h,
              child: PageView.builder(
                  controller: PageController(viewportFraction: 0.85),
                  padEnds: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              image: DecorationImage(
                                image: AssetImage(images[index]),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Center(
                              child: PoppinsCustomText(
                                fontWeight: FontWeight.w400,
                                textColor: primaryColor,
                                fontsize: 30.sp,
                                text: 'New Collection',
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 31.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.w),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    catagory.length,
                    (index) => GestureDetector(
                      onTap: () {
                        homeController.selectedindex.value = index;
                      },
                      child: Obx(() => Container(
                            padding: EdgeInsets.symmetric(horizontal: 4.w),
                            height: 44.h,
                            margin: EdgeInsets.symmetric(horizontal: 5.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: homeController.selectedindex.value == index
                                  ? primaryColor
                                  : Colors.white,
                              border: Border.all(
                                  width: 1,
                                  color: homeController.selectedindex.value ==
                                          index
                                      ? primaryColor
                                      : goldcolor),
                            ),
                            child: Center(
                                child: MontserratAlternateCustomText(
                              text: catagory[index],
                              textColor:
                                  homeController.selectedindex.value == index
                                      ? Colors.white
                                      : goldcolor,
                              fontWeight: FontWeight.w500,
                              fontsize: 18.sp,
                            )),
                          )),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MontserratCustomText(
                    text: 'Flash Sale',
                    textColor: primaryColor,
                    fontWeight: FontWeight.w700,
                    fontsize: 20.sp,
                  ),
                  MontserratCustomText(
                    text: 'View all',
                    textColor: primaryColor,
                    fontWeight: FontWeight.w500,
                    fontsize: 15.sp,
                  )
                ],
              ),
            ),
            // SizedBox(
            //   height: 10.h,
            // ),
            // Updated MasonryView
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomeDetailScreen();
                }));
              },
              child: MasonryView(
                  // itemPadding: 0,
                  //  itemRadius: 0,
                  listOfItem: productList, // Pass the product list here
                  numberOfColumn: 2,
                  itemBuilder: (productDatum) {
                    final product = productDatum
                        as Map<String, dynamic>; // Cast the item to Product
                    return Column(
                      // mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 280.h,
                          width: 160.w,
                          child: Center(
                            child: Container(
                              height: 250.h,
                              width: 160.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                border: Border.all(color: goldcolor),
                              ),
                              child: Stack(
                                clipBehavior: Clip.none,
                                // clipBehavior: Clip.hardEdge,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 120.h,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image:
                                                  AssetImage(product['image']),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: -15,
                                    right: -15,
                                    child: FloatingActionButton(
                                      // clipBehavior: Clip.hardEdge,
                                      onPressed: () {
                                        // Handle button press
                                      },
                                      backgroundColor: goldcolor,
                                      mini: true,
                                      child: Center(
                                          child: Icon(
                                        Icons.add,
                                        color: whiteColor,
                                        size: 30,
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // SizedBox(height: 5),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: MontserratCustomText(
                            textColor: primaryColor,
                            fontWeight: FontWeight.w700,
                            fontsize: 20.sp,
                            text: product['name'], // Display the product name
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: MontserratAlternateCustomText(
                            textColor: primaryColor,
                            fontWeight: FontWeight.w500,
                            fontsize: 20.sp,
                            text: product['price'], // Display the product price
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: 120.h,
            ),
          ],
        ),
      ),
    );
  }
}
