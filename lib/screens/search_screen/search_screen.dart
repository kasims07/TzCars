import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../constants/asset_path.dart';
import '../../widgets/appbar.dart';

@RoutePage()
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: CustomAppBar(
        isBack: true,
        title: 'Search',
        backImage: '',
        pressBack: () {
          AutoRouter.of(context).pop();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
                cursorColor: Colors.black,
                controller: search,
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
                  suffixIcon: InkWell(
                    onTap: () {
                      // ShowFilters(context);
                      _showActionSheet(context);
                    },
                    child: Transform.scale(
                      scale: 0.4,
                      child: SvgPicture.asset(
                        ImageAssetPath.icFilter,
                        color: Colors.black,
                        height: 20,
                        width: 10,
                      ),
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
    );
  }

  void ShowFilters(BuildContext context) {
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
            height: 70.h,
            child: SizedBox.expand(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(2.5.h),
                    topRight: Radius.circular(2.5.h)),
                child: Scaffold(
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [],
                  ),
                ),
              ),
            ),
          ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position:
              Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim1),
          child: child,
        );
      },
    ).then((value) => {print('Dialogue dismissed')});
  }

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: const Text('Title'),
        message: const Text('Message'),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            /// This parameter indicates the action would be a default
            /// default behavior, turns the action's text to bold text.
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Default Action'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Action'),
          ),
          CupertinoActionSheetAction(
            /// This parameter indicates the action would perform
            /// a destructive action such as delete or exit and turns
            /// the action's text color to red.
            isDestructiveAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Destructive Action'),
          ),
        ],
      ),
    );
  }
}
