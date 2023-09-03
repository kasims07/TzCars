import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:user_app/constants/asset_path.dart';
import 'package:user_app/widgets/genderPicker.dart';
import 'package:user_app/widgets/loading_widget.dart';

import '../../widgets/appbar.dart';
import '../../widgets/button.dart';
import '../../widgets/date_pick.dart';
import '../../widgets/phone_text_fild.dart';
import '../../widgets/text_filld.dart';

@RoutePage()
class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController fullName = TextEditingController();
  TextEditingController nickName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController pas = TextEditingController();
  TextEditingController conPas = TextEditingController();
  TextEditingController phone = TextEditingController();

  bool isLoding = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isBack: true,
        title: 'Fill Your Profile',
        backImage: '',
        pressBack: () {
          AutoRouter.of(context).pop();
        },
      ),
      body: Stack(
        children: [
          IgnorePointer(
            ignoring: isLoding,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 18.h,
                          decoration: const BoxDecoration(
                              color: Color(0xffF5F5F8), shape: BoxShape.circle),
                          child: ClipRRect(
                            child: Image.asset(ImageAssetPath.icProfile),
                          ),
                        ),
                        Positioned(
                            right: 0,
                            bottom: 2.h,
                            top: 13.h,
                            child: Container(
                              height: 3.h,
                              width: 3.h,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(4)),
                              child: Center(
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 12.sp,
                                ),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    TxFild(
                      controller: fullName,
                      hindText: 'Full Name',
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    TxFild(
                      controller: nickName,
                      hindText: 'Nickname',
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    TxFild(
                      controller: email,
                      hindText: 'Email',
                      sufixIcon: Icons.email,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    PhTxFild(
                      controller: phone,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    DateFild(
                      controller: dob,
                      hindText: 'Date of Birth',
                      sufixIcon: Icons.calendar_month_rounded,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    GenderFiled(
                      controller: gender,
                      hindText: 'Gender',
                      sufixIcon: Icons.arrow_drop_down_rounded,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    TxFild(
                      controller: pas,
                      hindText: 'Enter password',
                      sufixIcon: Icons.lock,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    TxFild(
                      controller: conPas,
                      hindText: 'conform password',
                      sufixIcon: Icons.lock,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Button(
                      onTap: () {
                        setState(() {
                          isLoding = true;
                        });
                        /* Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OTPVerifScreens()));*/
                      },
                      text: 'Continue',
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (isLoding) LoadingScreen(),
        ],
      ),
    );
  }
}
