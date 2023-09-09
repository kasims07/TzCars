import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:user_app/utils/app_routers.gr.dart';
import 'package:user_app/widgets/text_filld.dart';

import '../../../constants/asset_path.dart';

@RoutePage()
class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CupertinoContextMenu(
                        enableHapticFeedback: true,
                        actions: <Widget>[
                          CupertinoContextMenuAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            isDefaultAction: true,
                            trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
                            child: const Text('Copy'),
                          ),
                          CupertinoContextMenuAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            trailingIcon: CupertinoIcons.share,
                            child: const Text('Share'),
                          ),
                          CupertinoContextMenuAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            trailingIcon: CupertinoIcons.heart,
                            child: const Text('Favorite'),
                          ),
                          CupertinoContextMenuAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            isDestructiveAction: true,
                            trailingIcon: CupertinoIcons.delete,
                            child: const Text('Delete'),
                          ),
                        ],
                        child: CircleAvatar(
                          radius: 25,
                          child: Image.asset(ImageAssetPath.icProfile),
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Kasam 👋",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                ImageAssetPath.icLocation,
                                height: 15,
                                width: 15,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Text(
                                "Ahemdabad",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.urbanist(
                                  fontSize: 10.sp,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          AutoRouter.of(context)
                              .push(const NotificationRoute());
                        },
                        icon: Badge(
                          backgroundColor: Colors.black,
                          offset: Offset(5, -10),
                          label: Text(
                            '8',
                            style: GoogleFonts.urbanist(
                                fontSize: 10.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                          child:
                              SvgPicture.asset(ImageAssetPath.icNotification),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(ImageAssetPath.icLike)),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              TextField(
                  cursorColor: Colors.black,
                  controller: search,
                  readOnly: true,
                  onTap: () {
                    AutoRouter.of(context).navigate(SearchRoute());
                  },
                  keyboardType: TextInputType.text,
                  style: GoogleFonts.urbanist(
                      fontSize: 12.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.normal),
                  decoration: InputDecoration(
                    fillColor: Colors.grey.withOpacity(0.1),
                    hoverColor: Colors.grey.withOpacity(0.1),
                    focusColor: Colors.grey.withOpacity(0.1),
                    filled: true,
                    hintText: 'Search',
                    helperStyle: GoogleFonts.urbanist(
                        fontSize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                    prefixIcon: Transform.scale(
                      scale: 0.4,
                      child: SvgPicture.asset(
                        ImageAssetPath.icSearch,
                        color: Colors.grey,
                        height: 24,
                      ),
                    ),
                    suffixIcon: Transform.scale(
                      scale: 0.4,
                      child: SvgPicture.asset(
                        ImageAssetPath.icFilter,
                        color: Colors.black,
                        height: 20,
                        width: 10,
                      ),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
