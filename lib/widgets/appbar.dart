import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../utils/app_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isBack;
  final String backImage;
  final Function() pressBack;

  const CustomAppBar(
      {required this.title,
      required this.isBack,
      required this.backImage,
      required this.pressBack,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.transparent,
      titleSpacing: 0,
      centerTitle: false,
      title: Text(
        title,
        style: GoogleFonts.urbanist(
            fontSize: 15.sp, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      leading: isBack
          ? InkWell(
              onTap: () {
                pressBack();
              },
              child: Padding(
                padding: EdgeInsets.only(
                    left: 15.sp, top: 5.sp, right: 8.sp, bottom: 5.sp),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 20.sp,
                  color: AppStyles.bttonColor,
                ),
              ),
            )
          : Container(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
