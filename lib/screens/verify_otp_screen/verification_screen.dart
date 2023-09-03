import 'package:auto_route/annotations.dart';
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
import '../../widgets/otp_widget.dart';
import '../../widgets/text_filld.dart';

@RoutePage()
class OTPVerifScreens extends StatefulWidget {
  const OTPVerifScreens({super.key});

  @override
  State<OTPVerifScreens> createState() => _OTPVerifScreensState();
}

class _OTPVerifScreensState extends State<OTPVerifScreens> {
  TextEditingController emailController = TextEditingController();

  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  final TextEditingController _fieldFive = TextEditingController();
  final TextEditingController _fieldSix = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isBack: true,
        title: 'Forgot Password',
        backImage: '',
        pressBack: () {
          AutoRouter.of(context).pop();
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                "code has been send to +92*****63",
                textAlign: TextAlign.center,
                style: GoogleFonts.urbanist(
                    fontSize: 15.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 3.h,
              ),
              // Implement 4 input fields
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OTPWidget(_fieldOne, true), // auto focus
                  OTPWidget(_fieldTwo, false),
                  OTPWidget(_fieldThree, false),
                  OTPWidget(_fieldFour, false),
                  OTPWidget(_fieldFive, false),
                  OTPWidget(_fieldSix, false)
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                "Resend code in 52",
                textAlign: TextAlign.center,
                style: GoogleFonts.urbanist(
                    fontSize: 15.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 3.h,
              ),
              Button(
                onTap: () {
                  String _otp = _fieldOne.text +
                      _fieldTwo.text +
                      _fieldThree.text +
                      _fieldFour.text;
                  AutoRouter.of(context).push(const ChangePassRoute());
                },
                text: 'Verify',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
