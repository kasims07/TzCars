import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:user_app/constants/asset_path.dart';
import 'package:user_app/screens/signin_screen/signin_screen.dart';
import 'package:user_app/utils/app_routers.gr.dart';
import 'package:user_app/utils/app_styles.dart';
import 'package:user_app/widgets/appbar.dart';

import '../../widgets/button.dart';
import '../../widgets/phone_text_fild.dart';
import '../../widgets/text_filld.dart';

@RoutePage()
class SignUpScreens extends StatefulWidget {
  const SignUpScreens({super.key});

  @override
  State<SignUpScreens> createState() => _SignUpScreensState();
}

class _SignUpScreensState extends State<SignUpScreens> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController pasController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/car_logo.png',
                fit: BoxFit.contain,
                height: 20.h,
              ),
              Text(
                "Create Your Account",
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
                controller: phoneController,
              ),
              SizedBox(
                height: 3.h,
              ),
              Button(
                onTap: () {
                  AutoRouter.of(context).push(const CreateAccount());
                },
                text: 'Sign up',
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
              SizedBox(
                height: 2.h,
              ),
              InkWell(
                onTap: () {
                  AutoRouter.of(context).replace(const SignInRoutes());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
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
                      "Sign in",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.urbanist(
                          fontSize: 10.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
