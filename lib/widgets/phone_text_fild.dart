import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../utils/app_styles.dart';
import '../utils/stream_builder.dart';

class PhTxFild extends StatefulWidget {
  final TextEditingController? controller;

  const PhTxFild({
    super.key,
    required this.controller,
  });

  @override
  State<PhTxFild> createState() => _PhTxFildState();
}

class _PhTxFildState extends State<PhTxFild> {
  FocusNode node = FocusNode();
  String flag = '🇮🇳';
  String name = 'India (+91)';

  @override
  void initState() {
    node.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<SelectCountry>(
        stream: StreamUtil.selectedCountrySubject,
        builder: (context, snapshot) {
          return TextField(
              cursorColor: Colors.black,
              controller: widget.controller,
              focusNode: node,
              keyboardType: TextInputType.phone,
              style: GoogleFonts.urbanist(
                  fontSize: 12.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.normal),
              decoration: InputDecoration(
                fillColor: Colors.grey.withOpacity(0.1),
                hoverColor: Colors.grey.withOpacity(0.1),
                focusColor: Colors.grey.withOpacity(0.1),
                filled: true,
                hintText: 'Phone',
                helperStyle: GoogleFonts.urbanist(
                    fontSize: 12.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
                prefixIcon: InkWell(
                  onTap: () {
                    showCountryPicker(
                      context: context,
                      favorite: <String>['IN'],
                      showPhoneCode: true,
                      onSelect: (Country country) {
                        name = '${country.name} (+${country.phoneCode})';

                        SelectCountry selectCountry =
                            SelectCountry(country.flagEmoji, name);
                        StreamUtil.selectedCountrySubject.add(selectCountry);
                        print('Select country: ${country.displayName}');
                        print('Select country: ${country.countryCode}');
                        print('Select country: ${country.flagEmoji}');
                        print(
                            'Select country: ${country.displayNameNoCountryCode}');
                        print('Select country: ${country.name}');
                        print('Select country: ${country.phoneCode}');
                      },
                      // Optional. Sets the theme for the country list picker.
                      countryListTheme: CountryListThemeData(
                        flagSize: 30.0,
                        bottomSheetHeight: 550,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0),
                        ),
                        // Optional. Styles the search field.
                        inputDecoration: InputDecoration(
                          labelText: 'Search',
                          hintText: 'Start typing to search',
                          prefixIcon: const Icon(Icons.search),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color(0xFF8C98A8).withOpacity(0.2),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    width: 70,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          snapshot.hasData ? snapshot.data!.flag : flag,
                          textAlign: TextAlign.center,
                          textScaleFactor: 1.5,
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: node.hasFocus ? Colors.black : Colors.grey,
                        )
                      ],
                    ),
                  ),
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
        });
  }
}
