import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:user_app/constants/asset_path.dart';
import 'package:user_app/widgets/genderPicker.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../widgets/appbar.dart';
import '../../widgets/button.dart';
import '../../widgets/date_pick.dart';
import '../../widgets/text_filld.dart';

@RoutePage()
class ChangePassScreen extends StatefulWidget {
  const ChangePassScreen({super.key});

  @override
  State<ChangePassScreen> createState() => _ChangePassScreenState();
}

class _ChangePassScreenState extends State<ChangePassScreen> {
  TextEditingController newPas = TextEditingController();
  TextEditingController confPas = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isBack: true,
        title: 'Create New Password',
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
              SizedBox(
                height: 20.h,
                child: Image.asset(
                  ImageAssetPath.shild,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "Create your New Password",
                textAlign: TextAlign.center,
                style: GoogleFonts.urbanist(
                    fontSize: 24.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              TxFild(
                controller: newPas,
                hindText: 'Enter new password',
                sufixIcon: Icons.lock,
              ),
              SizedBox(
                height: 2.h,
              ),
              TxFild(
                controller: confPas,
                hindText: 'conform new password',
                sufixIcon: Icons.lock,
              ),
              SizedBox(
                height: 2.h,
              ),
              Button(
                onTap: () {
                  showGeneralDialog(
                    barrierLabel: "Label1",
                    barrierDismissible: true,
                    barrierColor: Colors.black.withOpacity(0.5),
                    transitionDuration: Duration(milliseconds: 500),
                    context: context,
                    pageBuilder: (context, anim1, anim2) {
                      return Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 30.0.h,
                          child: SizedBox.expand(
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(2.5.h),
                                  topRight: Radius.circular(2.5.h)),
                              child: Scaffold(
                                body: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 4.0.h,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                      child: Image.asset(
                                        ImageAssetPath.shild,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                        .animate(
                                            onPlay: (controller) => controller
                                                .repeat()) // inherits duration from fadeIn
                                        .moveY(
                                            delay: 300.ms,
                                            duration: 600.ms,
                                            begin: 0,
                                            end: 1,
                                            curve: Curves.easeIn)
                                        .moveX(
                                            delay: 300.ms,
                                            duration: 600.ms,
                                            begin: 1,
                                            end: 0,
                                            curve: Curves.easeOut),
                                    // runs after the above w/new duration/ inherits the delay & dura,
                                    const Text('Congratulations!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            height: 1.4,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                    const Center(
                                      child: Text(
                                        'Your account password is reset',
                                        style: TextStyle(
                                            height: 1.4,
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    transitionBuilder: (context, anim1, anim2, child) {
                      return SlideTransition(
                        position: Tween(begin: Offset(0, 1), end: Offset(0, 0))
                            .animate(anim1),
                        child: child,
                      );
                    },
                  ).then((value) => {print('Dialogue dismissed')});
                },
                text: 'Continue',
              ),
            ],
          ),
        ),
      ),
    );
  }

  static void showSussefullDilog() {}
}
