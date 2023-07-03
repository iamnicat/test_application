// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

extension ColorExtensions on Color {
  bool get isColorDark {
    const double darkColorLuminance = 0.5;

    final luminance = (0.299 * red + 0.587 * green + 0.114 * blue) / 255;

    return luminance < darkColorLuminance;
  }
}
