import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFFF63D68);
  static const Color backgroundColor = Color(0xFF161616);
  static const Color greenColor = Color(0xFF12B76A);
  static const Color redColor = Color(0xFFf04438);
  static const Color darkGreyColor = Color(0xFF5D5C64);
  static const Color lightGreyColor = Color(0xFFB6B6B6);
  static const Color greyColor = Color(0xFF667085);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color cardColor = Color(0xFF1E1E1E);
}
extension HexColorExtension on String? {
  Color toColor() {
    if (this == null || this!.isEmpty) {
      return Colors.transparent; // fallback
    }

    String hex = this!.replaceAll('#', '');
    if (hex.length == 6) {
      hex = 'FF$hex'; // Add full opacity if missing
    }

    // Validate that it’s a proper hex value
    if (hex.length != 8) {
      return Colors.transparent;
    }

    try {
      return Color(int.parse(hex, radix: 16));
    } catch (_) {
      return Colors.transparent; // If parsing fails
    }
  }
}