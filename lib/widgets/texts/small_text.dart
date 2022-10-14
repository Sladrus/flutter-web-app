import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_webapp/utils/colors.dart';
import 'package:flutter_webapp/utils/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallText extends StatelessWidget {
  final String text;
  Color? color = AppColors.mainColor3;
  double? size = Dimensions.getDimension(14);
  FontWeight? fontWeight = FontWeight.w500;

  SmallText(
      {Key? key, required this.text, this.color, this.size, this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.roboto(
          fontSize: size, fontWeight: fontWeight, color: color),
    );
  }
}
