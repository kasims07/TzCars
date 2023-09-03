import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class StreamUtil {
  static BehaviorSubject<String> countrycode =
      BehaviorSubject<String>.seeded('91');
  static BehaviorSubject<Locale> languages =
      BehaviorSubject<Locale>.seeded(const Locale('en'));
  static BehaviorSubject<SelectCountry> selectedCountrySubject =
      BehaviorSubject<SelectCountry>.seeded(SelectCountry('🇮🇳', ' (+91)'));
}

class SelectCountry {
  String flag;
  String countryName;

  SelectCountry(this.flag, this.countryName);
}
