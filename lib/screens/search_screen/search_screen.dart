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
  final GlobalKey<_MyDialogState> dialogKey = GlobalKey<_MyDialogState>();
  List<bool> isSelected = [true, false, false, false, false, false];
  List<bool> conditions = [
    true,
    false,
    false,
  ];
  List<bool> brands = [
    true,
    false,
    false,
  ];

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
        padding: const EdgeInsets.all(10),
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
                      // _showActionSheet(context);
                      showGeneralDialog(
                        context: context,
                        barrierLabel: "Label1",
                        barrierDismissible: true,
                        barrierColor: Colors.black.withOpacity(0.5),
                        transitionDuration: Duration(milliseconds: 500),
                        pageBuilder: (context, anim1, anim2) => MyDialog(
                          key: dialogKey,
                          rating: isSelected,
                          condition: conditions,
                          brands: brands,
                        ),
                        transitionBuilder: (context, anim1, anim2, child) {
                          return SlideTransition(
                            position:
                                Tween(begin: Offset(0, 1), end: Offset(0, 0))
                                    .animate(anim1),
                            child: child,
                          );
                        },
                      ).then((value) => {print('Dialogue dismissed')});
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

  /*void ShowFilters(BuildContext context) {
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
                  body: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Filter',
                              style: GoogleFonts.urbanist(
                                  fontSize: 15.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        const Divider(),
                        SizedBox(
                          height: 1.h,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Rating',
                                  style: GoogleFonts.urbanist(
                                      fontSize: 15.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            ToggleButtons(
                              children: <Widget>[
                                for (int i = 0; i < 5; i++)
                                  Chip(
                                    backgroundColor: isSelected[i]
                                        ? Colors.black
                                        : Colors.white,
                                    label: Text((i + 1).toString()),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                  ),
                              ],
                              isSelected: isSelected,
                              onPressed: (int index) {
                                setState(() {
                                  for (int buttonIndex = 0;
                                      buttonIndex < isSelected.length;
                                      buttonIndex++) {
                                    isSelected[buttonIndex] =
                                        buttonIndex == index;
                                  }
                                });
                              },
                              fillColor: Colors.transparent,
                              selectedColor: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ],
                        )
                      ],
                    ),
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
  }*/

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

class MyDialog extends StatefulWidget {
  List<bool> rating;
  List<bool> condition;
  List<bool> brands;

  MyDialog(
      {Key? key,
      required this.rating,
      required this.condition,
      required this.brands})
      : super(key: key);

  @override
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  @override
  Widget build(BuildContext context) {
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
              body: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Filter',
                          style: GoogleFonts.urbanist(
                              fontSize: 15.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    const Divider(),
                    SizedBox(
                      height: 1.h,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Rating',
                              style: GoogleFonts.urbanist(
                                  fontSize: 15.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          child: ToggleButtons(
                            borderColor: Colors.transparent,
                            color: Colors.transparent,
                            selectedColor: Colors.transparent,
                            disabledColor: Colors.transparent,
                            fillColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            selectedBorderColor: Colors.transparent,
                            children: <Widget>[
                              for (int i = 0; i < widget.rating.length; i++)
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 02),
                                  child: Chip(
                                    avatar: Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 15,
                                    ),
                                    backgroundColor: widget.rating[i]
                                        ? Colors.black
                                        : Colors.white,
                                    label: Text(
                                      i == 0 ? 'All' : (i).toString(),
                                      style: TextStyle(
                                        color: widget.rating[i]
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                  ),
                                ),
                            ],
                            isSelected: widget.rating,
                            onPressed: (int index) {
                              setState(() {
                                for (int buttonIndex = 0;
                                    buttonIndex < widget.rating.length;
                                    buttonIndex++) {
                                  widget.rating[buttonIndex] =
                                      buttonIndex == index;
                                }
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Condition',
                              style: GoogleFonts.urbanist(
                                  fontSize: 15.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ToggleButtons(
                              borderColor: Colors.transparent,
                              color: Colors.transparent,
                              selectedColor: Colors.transparent,
                              disabledColor: Colors.transparent,
                              fillColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              selectedBorderColor: Colors.transparent,
                              children: <Widget>[
                                for (int i = 0;
                                    i < widget.condition.length;
                                    i++)
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 02),
                                    child: Chip(
                                      backgroundColor: widget.condition[i]
                                          ? Colors.black
                                          : Colors.white,
                                      label: Text(
                                        i == 0
                                            ? 'All'
                                            : i == 1
                                                ? 'New'
                                                : 'Used',
                                        style: TextStyle(
                                          color: widget.condition[i]
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: Colors.black,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                    ),
                                  ),
                              ],
                              isSelected: widget.condition,
                              onPressed: (int index) {
                                setState(() {
                                  for (int buttonIndex = 0;
                                      buttonIndex < widget.condition.length;
                                      buttonIndex++) {
                                    widget.condition[buttonIndex] =
                                        buttonIndex == index;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
