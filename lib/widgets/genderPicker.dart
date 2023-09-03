import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class GenderFiled extends StatefulWidget {
  final String? hindText;
  final IconData? prefixIcon;
  final IconData? sufixIcon;
  final TextEditingController? controller;

  const GenderFiled({
    super.key,
    required this.controller,
    this.hindText,
    this.prefixIcon,
    this.sufixIcon,
  });

  @override
  State<GenderFiled> createState() => _GenderFiledState();
}

class _GenderFiledState extends State<GenderFiled> {
  final double _kItemExtent = 32.0;
  final List<String> _gender = <String>['Male', 'Female', 'Other'];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        onPressed: () {
          _showDialog(CupertinoPicker(
            magnification: 1.22,
            squeeze: 1.2,
            useMagnifier: true,
            itemExtent: _kItemExtent,
            // This sets the initial item.
            scrollController: FixedExtentScrollController(
              initialItem: 0,
            ),
            // This is called when selected item is changed.
            onSelectedItemChanged: (int selectedItem) {
              setState(() {
                widget.controller!.text = _gender[selectedItem];
              });
            },
            children: List<Widget>.generate(_gender.length, (int index) {
              return Center(child: Text(_gender[index]));
            }),
          ));
        },
        padding: const EdgeInsets.all(0),
        child: Container(
          padding: EdgeInsets.all(2.h),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
            //border: Border.all(width: 1, color: Colors.black)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  widget.controller!.text.isEmpty
                      ? widget.hindText!
                      : widget.controller!.text,
                  style: GoogleFonts.urbanist(
                      fontSize: 12.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.normal)),
              Icon(
                widget.sufixIcon!,
                color: Colors.grey,
              )
            ],
          ),
        ));
  }

  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        // The Bottom margin is provided to align the popup above the system
        // navigation bar.
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        // Provide a background color for the popup.
        color: CupertinoColors.systemBackground.resolveFrom(context),
        // Use a SafeArea widget to avoid system overlaps.
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }
}
