import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:user_app/screens/welcome_screen/welcome_screen.dart';
import 'package:user_app/utils/app_routers.gr.dart';

import '../../app_screens/app_screens.dart';
import '../../constants/app_constants.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    controller.forward();
    animation.addStatusListener((status) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      bool? isLogin = prefs.getBool(AppConstants.login);

      if (isLogin == true) {
        if (mounted) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            AppScreens.dashboardScreen,
            (Route<dynamic> route) => false,
          );
        }
      } else {
        if (mounted) {
          AutoRouter.of(context).push(const WelcomeRoute());
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    height: 100.h,
                    width: 100.w,
                    child: Lottie.asset('assets/animations/car_loading.json')),
                Positioned.fill(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        'Tanzania Cars',
                        style: TextStyle(
                            fontSize: 35.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.urbanist().fontFamily),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
