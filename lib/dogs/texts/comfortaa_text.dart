import 'package:flutter/material.dart';
import 'package:flutter_webapp/utils/colors.dart';
import 'package:flutter_webapp/utils/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

class ComfortaaText extends StatelessWidget {
  final String text;
  Color? color = AppColors.mainColor2;
  double? size = Dimensions.getDimension(24);
  FontWeight? fontWeight = FontWeight.w500;
  TextAlign? textAlign = TextAlign.center;

  ComfortaaText(
      {Key? key,
      required this.text,
      this.color,
      this.size,
      this.fontWeight,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.comfortaa(
          fontSize: size, fontWeight: fontWeight, color: color),
    );
  }
}
