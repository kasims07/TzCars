import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class TxFild extends StatefulWidget {
  final String? hindText;
  final IconData? prefixIcon;
  final IconData? sufixIcon;
  final TextEditingController? controller;

  const TxFild(
      {super.key,
      required this.controller,
      this.hindText,
      this.prefixIcon,
      this.sufixIcon});

  @override
  State<TxFild> createState() => _TxFildState();
}

class _TxFildState extends State<TxFild> {
  FocusNode node = FocusNode();

  @override
  void initState() {
    node.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: Colors.black,
        controller: widget.controller,
        focusNode: node,
        keyboardType: widget.hindText == 'Email'
            ? TextInputType.emailAddress
            : TextInputType.text,
        style: GoogleFonts.urbanist(
            fontSize: 12.sp,
            color: Colors.black,
            fontWeight: FontWeight.normal),
        decoration: InputDecoration(
          fillColor: Colors.grey.withOpacity(0.1),
          hoverColor: Colors.grey.withOpacity(0.1),
          focusColor: Colors.grey.withOpacity(0.1),
          filled: true,
          hintText: '${widget.hindText}',
          helperStyle: GoogleFonts.urbanist(
              fontSize: 12.sp,
              color: Colors.black,
              fontWeight: FontWeight.normal),
          prefixIcon: widget.prefixIcon == null
              ? null
              : Icon(
                  widget.prefixIcon!,
                  color: node.hasFocus ? Colors.black : Colors.grey,
                ),
          suffixIcon: widget.sufixIcon == null
              ? null
              : Icon(
                  widget.sufixIcon!,
                  color: node.hasFocus ? Colors.black : Colors.grey,
                ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ));
  }
}
