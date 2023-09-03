import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class OTPWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;

  const OTPWidget(this.controller, this.autoFocus, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
          counterText: '',
          fillColor: Colors.grey.withOpacity(0.1),
          hoverColor: Colors.grey.withOpacity(0.1),
          focusColor: Colors.grey.withOpacity(0.1),
          filled: true,
          helperStyle: GoogleFonts.urbanist(
              fontSize: 12.sp,
              color: Colors.black,
              fontWeight: FontWeight.normal),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
