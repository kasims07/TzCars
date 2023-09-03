import 'dart:async';
import 'dart:math';

import 'package:action_slider/action_slider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:user_app/constants/asset_path.dart';
import 'package:user_app/screens/welcome_screen/get_start_screen.dart';
import 'package:user_app/utils/app_routers.dart';
import 'package:user_app/utils/app_routers.gr.dart';

@RoutePage()
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2), () {
      AutoRouter.of(context).push(const GetStartRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 100.h,
            width: 100.w,
            child: Image.asset(
              ImageAssetPath.welcomeScreen,
              fit: BoxFit.cover,
            ),
          ),
          Container(
              height: 100.h,
              width: 100.w,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black,
                  Colors.transparent,
                ],
              ))),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Welcome to ',
                      style: GoogleFonts.urbanist(
                          fontSize: 30.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '👋',
                      style: GoogleFonts.urbanist(fontSize: 25.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'Tanzania Cars',
                  style: GoogleFonts.urbanist(
                      fontSize: 40.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'The best car marketplace app of the country!',
                  style: GoogleFonts.urbanist(
                      fontSize: 13.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 2.h,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
