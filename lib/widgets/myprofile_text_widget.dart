
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfileTextWidget extends StatelessWidget {
  const MyProfileTextWidget({
    super.key, required this.profileName, this.fontWeight,   this.fontSize,
  });
 final String profileName;
 final FontWeight? fontWeight;
 final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(profileName,
    style: GoogleFonts.poppins(
      fontWeight: fontWeight,
      fontSize: fontSize
    ),
    );
  }
}