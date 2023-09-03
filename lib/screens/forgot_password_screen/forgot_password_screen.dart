import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:user_app/constants/asset_path.dart';
import 'package:user_app/screens/signup_screen/signup_screen.dart';
import 'package:user_app/screens/verify_otp_screen/verification_screen.dart';
import 'package:user_app/utils/app_routers.gr.dart';
import 'package:user_app/utils/app_styles.dart';
import 'package:user_app/widgets/appbar.dart';

import '../../widgets/button.dart';
import '../../widgets/phone_text_fild.dart';
import '../../widgets/text_filld.dart';

@RoutePage()
class ForgotPasScreens extends StatefulWidget {
  const ForgotPasScreens({super.key});

  @override
  State<ForgotPasScreens> createState() => _ForgotPasScreensState();
}

class _ForgotPasScreensState extends State<ForgotPasScreens> {
  TextEditingController emailController = TextEditingController();

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
          children: [
            Hero(
              tag: 'H1',
              child: SizedBox(
                height: 20.h,
                child: Image.asset(
                  ImageAssetPath.lock,
                  fit: BoxFit.cover,
                ),
              )
                  .animate()
                  .fadeIn(duration: 500.milliseconds, curve: Curves.easeIn),
            ),
            Text(
              "Enter your phone reset your password",
              textAlign: TextAlign.center,
              style: GoogleFonts.urbanist(
                  fontSize: 25.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 3.h,
            ),
            PhTxFild(
              controller: emailController,
            ),
            SizedBox(
              height: 3.h,
            ),
            Button(
              onTap: () {
                AutoRouter.of(context).push(const OTPVerifRoutes());
              },
              text: 'Send OTP',
            ),
          ],
        ),
      ),
    );
  }
}
