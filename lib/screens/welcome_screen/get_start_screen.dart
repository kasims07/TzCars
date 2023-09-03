import 'package:action_slider/action_slider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sizer/sizer.dart';
import 'package:user_app/constants/asset_path.dart';
import 'package:user_app/utils/app_routers.dart';
import 'package:user_app/utils/app_routers.gr.dart';

import 'package:user_app/utils/app_styles.dart';

import '../onBoard_screens/onBord_screen.dart';

@RoutePage()
class GetStartScreen extends StatefulWidget {
  const GetStartScreen({super.key});

  @override
  State<GetStartScreen> createState() => _GetStartScreenState();
}

class _GetStartScreenState extends State<GetStartScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 20),
        child: ActionSlider.standard(
          sliderBehavior: SliderBehavior.stretch,
          backgroundColor: Colors.white,
          toggleColor: AppStyles.bttonColor,
          icon: const Icon(
            Icons.keyboard_arrow_right_outlined,
            color: Colors.white,
          ),
          action: (controller) async {
            controller.success();
            AutoRouter.of(context).push(const OnBoardRoutes());
            //starts success animation
            controller.reset(); //resets the slider
          },
          child: Text(
            'Slide to Get Start',
            textAlign: TextAlign.center,
            style: GoogleFonts.urbanist(
                fontSize: 12.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      backgroundColor: const Color(0xFFF3F3F3),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Stack(
            fit: StackFit.loose,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SvgPicture.asset(
                  ImageAssetPath.carStand,
                  height: 30.h,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                bottom: 10.h,
                child: Image.asset(
                  ImageAssetPath.getStarted,
                  fit: BoxFit.cover,
                  height: 40.h,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'The best car in your hand with TzCars',
              textAlign: TextAlign.center,
              style: GoogleFonts.urbanist(
                  fontSize: 30.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
