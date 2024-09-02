import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PoppinsCustomText extends StatelessWidget {
  final TextOverflow? overflow;
  final String text;
  final Color textColor;
  final int? maxLines;
  final double? fontsize;
  final FontWeight fontWeight;
  final double? height;
  const PoppinsCustomText(
      {super.key,
      required this.text,
      required this.textColor,
      this.fontsize,
      required this.fontWeight,
      this.height,
      this.maxLines,
      this.overflow});

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: overflow,
      maxLines: maxLines,
      text,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(

            color: textColor,
            fontSize: fontsize,
            fontWeight: fontWeight,
            height: height),
      ),
    );
  }
}

class MontserratCustomText extends StatelessWidget {
  final String text;
  final Color textColor;
  final int? maxLines;
  final TextOverflow? overflow;
  final double? fontsize;
  final FontWeight fontWeight;
  final double? height;
  const MontserratCustomText(
      {super.key,
      required this.text,
      required this.textColor,
      this.fontsize,
      required this.fontWeight,
      this.height,
      this.maxLines,
      this.overflow});

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: overflow,
      maxLines: maxLines,
      text,
      style: GoogleFonts.montserrat(
        textStyle: TextStyle(
            color: textColor,
            fontSize: fontsize,
            fontWeight: fontWeight,
            height: height),
      ),
    );
  }
}

class MontserratAlternateCustomText extends StatelessWidget {
  final String text;
  final Color textColor;
  final int? maxLines;
  final TextOverflow? overflow;
  final double? fontsize;
  final FontWeight fontWeight;
  final double? height;
  const MontserratAlternateCustomText(
      {super.key,
      required this.text,
      required this.textColor,
      this.fontsize,
      required this.fontWeight,
      this.height,
      this.maxLines,
      this.overflow});

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: overflow,
      maxLines: maxLines,
      text,
      style: GoogleFonts.montserratAlternates(
        textStyle: TextStyle(
            color: textColor,
            fontSize: fontsize,
            fontWeight: fontWeight,
            height: height),
      ),
    );
  }
}
