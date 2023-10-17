import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/asset_path.dart';
import '../../../utils/app_routers.gr.dart';
import '../../../widgets/loading_widget.dart';

@RoutePage()
class ProfilePageScreen extends StatefulWidget {
  const ProfilePageScreen ({super.key});

  @override
  State<ProfilePageScreen> createState() => _ProfilePageScreenState();
}

class _ProfilePageScreenState extends State<ProfilePageScreen> {

  bool isLoding = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IgnorePointer(
          ignoring: isLoding,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 3.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Profile",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.urbanist(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SvgPicture.asset(ImageAssetPath.icMore),
                    ],
                  ),
                  SizedBox(height: 2.h,),
                  Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 8.h,
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
                      SizedBox(width: 2.w,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kasam",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.urbanist(
                                fontSize: 18.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 0.5.h,),
                          Text(
                            "+91 9876543210",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.urbanist(
                              fontSize: 14.sp,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      InkWell(
                        onTap: (){
                          AutoRouter.of(context).push(const CreateAccount());
                        },
                        child: Container(
                          height: 3.h,
                          width: 3.h,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(3)
                          ),
                          child: Center(
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),

                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Divider(),
                  SizedBox(
                    height: 1.h,
                  ),
                  //Saved
                  Row(
                    children: [
                      SvgPicture.asset(ImageAssetPath.icSave),
                      SizedBox(width: 4.w,),
                      Text(
                        "Save Cars",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.urbanist(
                            fontSize: 14.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_right_rounded)
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  //Notification
                  Row(
                    children: [
                      SvgPicture.asset(ImageAssetPath.icNotification),
                      SizedBox(width: 4.w,),
                      Text(
                        "Notification",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.urbanist(
                            fontSize: 14.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_right_rounded)
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  //Security
                  Row(
                    children: [
                      SvgPicture.asset(ImageAssetPath.icSequrety),
                      SizedBox(width: 4.w,),
                      Text(
                        "Security",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.urbanist(
                            fontSize: 14.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_right_rounded)
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  //Languages
                  Row(
                    children: [
                      SvgPicture.asset(ImageAssetPath.icEarth),
                      SizedBox(width: 4.w,),
                      Text(
                        "Languages",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.urbanist(
                            fontSize: 14.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_right_rounded)
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  //Privacy Policy
                  Row(
                    children: [
                      SvgPicture.asset(ImageAssetPath.icLock),
                      SizedBox(width: 4.w,),
                      Text(
                        "Privacy Policy",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.urbanist(
                            fontSize: 14.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_right_rounded)
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  //Help center
                  Row(
                    children: [
                      SvgPicture.asset(ImageAssetPath.icHelpCenter),
                      SizedBox(width: 4.w,),
                      Text(
                        "Help Center",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.urbanist(
                            fontSize: 14.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_right_rounded)
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  //Invite Friend
                  Row(
                    children: [
                      SvgPicture.asset(ImageAssetPath.icInvite),
                      SizedBox(width: 4.w,),
                      Text(
                        "Invite Friends",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.urbanist(
                            fontSize: 14.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_right_rounded)
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  //Logout
                  Row(
                    children: [
                      SvgPicture.asset(ImageAssetPath.icLogout),
                      SizedBox(width: 4.w,),
                      Text(
                        "Logout",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.urbanist(
                            fontSize: 14.sp,
                            color: Color(0xffF75555),
                            fontWeight: FontWeight.w500),
                      ),
                     ],
                  ),
                ],
              ),
            ),
          ),
        ),
        if (isLoding) LoadingScreen(),
      ],
    );
  }
}
