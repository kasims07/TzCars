import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class DateFild extends StatefulWidget {
  final String? hindText;
  final IconData? prefixIcon;
  final IconData? sufixIcon;
  final TextEditingController? controller;

  const DateFild({
    super.key,
    required this.controller,
    this.hindText,
    this.prefixIcon,
    this.sufixIcon,
  });

  @override
  State<DateFild> createState() => _DateFildState();
}

class _DateFildState extends State<DateFild> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        onPressed: () {
          DateTime today = DateTime.now();
          _showDialog(
            CupertinoDatePicker(
              initialDateTime: DateTime(
                today.year - 16,
                today.month,
                today.day,
                today.hour,
                today.minute,
                today.second,
                today.millisecond,
                today.microsecond,
              ),
              use24hFormat: true,
              minimumDate: DateTime(
                today.year - 100,
                today.month,
                today.day,
                today.hour,
                today.minute,
                today.second,
                today.millisecond,
                today.microsecond,
              ),
              maximumDate: DateTime(
                today.year - 16,
                today.month,
                today.day,
                today.hour,
                today.minute,
                today.second,
                today.millisecond,
                today.microsecond,
              ),
              mode: CupertinoDatePickerMode.date,
              // This is called when the user changes the dateTime.
              onDateTimeChanged: (DateTime newDateTime) {
                setState(() => widget.controller!.text =
                    DateFormat.yMMMd().format(newDateTime));
              },
            ),
          );
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
