import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../utils/app_styles.dart';

class Button extends StatelessWidget {
  VoidCallback? onTap;
  String? text;

  Button({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: 7.h,
          decoration: BoxDecoration(
              color: AppStyles.bttonColor,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Color(0x3F101010),
                  blurRadius: 24,
                  offset: Offset(4, 8),
                  spreadRadius: 0,
                )
              ]),
          child: Center(
              child: Text(
            '$text',
            textAlign: TextAlign.center,
            style: GoogleFonts.urbanist(
              color: Colors.white,
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              height: 1.40,
              letterSpacing: 0.20,
            ),
          ))),
    );
  }
}
