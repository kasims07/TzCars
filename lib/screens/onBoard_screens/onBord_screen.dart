import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:user_app/constants/asset_path.dart';
import 'package:user_app/screens/signup_screen/signup_screen.dart';
import 'package:user_app/utils/app_styles.dart';
import 'package:user_app/widgets/appbar.dart';

import '../../utils/app_routers.gr.dart';
import '../../widgets/button.dart';

@RoutePage()
class OnBoardScreens extends StatefulWidget {
  const OnBoardScreens({super.key});

  @override
  State<OnBoardScreens> createState() => _OnBoardScreensState();
}

class _OnBoardScreensState extends State<OnBoardScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isBack: true,
        title: '',
        backImage: '',
        pressBack: () {
          AutoRouter.of(context).pop();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                height: 20.h,
                width: 100.w,
                child: Lottie.asset('assets/animations/car_loading.json',
                    fit: BoxFit.cover)),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "Let's drive in",
              textAlign: TextAlign.center,
              style: GoogleFonts.urbanist(
                  fontSize: 40.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              height: 8.h,
              width: 100.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppStyles.boderColor)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      ImageAssetPath.google,
                      height: 4.h,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Continue with Google',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.urbanist(
                          fontSize: 15.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              height: 8.h,
              width: 100.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppStyles.boderColor)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      ImageAssetPath.apple,
                      height: 4.h,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Continue with Apple',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.urbanist(
                          fontSize: 15.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 3.h),
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    indent: 20.0,
                    endIndent: 10.0,
                    thickness: 1,
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  'or',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.urbanist(
                      fontSize: 15.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 2.w,
                ),
                const Expanded(
                  child: Divider(
                    indent: 20.0,
                    endIndent: 10.0,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 3.h),
            Button(
              onTap: () {
                AutoRouter.of(context).push(const SignInRoutes());
              },
              text: 'Sign in with password',
            ),
            SizedBox(
              height: 2.h,
            ),
            InkWell(
              onTap: () {
                AutoRouter.of(context).push(const SignUpRoutes());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.urbanist(
                        fontSize: 10.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    "Sign up",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.urbanist(
                        fontSize: 10.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
