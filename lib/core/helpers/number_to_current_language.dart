import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
extension TranslateNumbers on String {
  String? toCurrentNumberLanguage(BuildContext context) {
    if (Intl.getCurrentLocale() == 'ar') {
      final arabicNumbers = {
        '0': '٠',
        '1': '١',
        '2': '٢',
        '3': '٣',
        '4': '٤',
        '5': '٥',
        '6': '٦',
        '7': '٧',
        '8': '٨',
        '9': '٩',
      };
      return split('').map((char) => arabicNumbers[char] ?? char).join();
    }
    return this;
  }
}
