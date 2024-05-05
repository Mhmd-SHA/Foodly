import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle appStyle(double size, Color color, FontWeight fontweight) {
  return GoogleFonts.poppins()
      .copyWith(fontWeight: fontweight, fontSize: size, color: color);
}
