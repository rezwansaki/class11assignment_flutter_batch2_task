// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final makeBottom = SizedBox(
    height: 55.h,
    child: BottomAppBar(
      color: const Color.fromRGBO(12, 52, 72, 1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.home, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.blur_on, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.hotel, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.account_box, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
    ),
  );

  List<dynamic> menuList = [
    {"name": "Fruits", "path": "assets/apple.png"},
    {"name": "Vegetables", "path": "assets/broccoli.png"},
    {"name": "Diary", "path": "assets/cheese.png"},
    {"name": "FruMeat", "path": "assets/meat.png"}
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        bottomNavigationBar: makeBottom,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24.r),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/Mask_group.png",
                    ),
                    SizedBox(width: 11.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good morning',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'DM Sans',
                              color: const Color(0xFF979899)),
                        ),
                        SizedBox(width: 2.h),
                        Text(
                          'Amelia Barlow',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'DM Sans'),
                        )
                      ],
                    ),
                    SizedBox(width: 80.w),
                    Image.asset(
                      "assets/Vector.png",
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      'My Flat',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'DM Sans'),
                    ),
                    SizedBox(width: 8.w),
                    Image.asset(
                      "assets/down_arrow.png",
                    ),
                  ],
                ),
                SizedBox(height: 41.h),
                Row(
                  children: [
                    Image.asset(
                      "assets/mag_glass.png",
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      'Search category',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF979899),
                          fontFamily: 'DM Sans'),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                Image.asset(
                  "assets/slider1.png",
                ),
                SizedBox(height: 24.h),
                Row(
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF06161C),
                          fontFamily: 'DM Sans'),
                    ),
                    SizedBox(width: 4.w),
                    Image.asset(
                      "assets/Face Savoring Food.png",
                    ),
                    SizedBox(width: 183.w),
                    Text(
                      'See all',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF23AA49),
                          fontFamily: 'DM Sans'),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Container(
                  height: 99.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      for (var i = 0; i < menuList.length; i++)
                        Container(
                          width: 73.w,
                          height: 99.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                menuList[i]["path"],
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                menuList[i]["name"],
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFF06161C),
                                    fontFamily: 'DM Sans'),
                              ),
                            ],
                          ),
                        )
                    ],
                  ),
                ),
                SizedBox(height: 24.h),
                Row(
                  children: [
                    Text(
                      'Best selling',
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF06161C),
                          fontFamily: 'DM Sans'),
                    ),
                    // SizedBox(width: 4.w),
                    // Image.asset(
                    //   "assets/Fire.png",
                    // ),
                    SizedBox(width: 5.w),
                    Text(
                      'See all',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF23AA49),
                          fontFamily: 'DM Sans'),
                    ),
                    SizedBox(width: 16.h),
                    Container(
                      height: 99.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          Container(
                            width: 73.w,
                            height: 99.h,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png",
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  'Bell Pepper Red',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFF06161C),
                                      fontFamily: 'DM Sans'),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
