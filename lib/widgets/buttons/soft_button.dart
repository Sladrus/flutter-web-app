import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_webapp/utils/colors.dart';
import 'package:flutter_webapp/utils/dimensions.dart';
import 'package:flutter_webapp/widgets/texts/small_text.dart';

class SoftButton extends StatelessWidget {
  final String text;
  final onTap;

  SoftButton({Key? key, required this.text, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          height: Dimensions.getDimension(40),
          width: double.maxFinite,
          margin: EdgeInsets.symmetric(
              horizontal: Dimensions.getDimension(20),
              vertical: Dimensions.getDimension(10)),
          decoration: BoxDecoration(
            color: AppColors.mainColor2,
            borderRadius: BorderRadius.circular(Dimensions.getDimension(30)),
          ),
          child: Center(
            child: SmallText(
              text: text,
              size: Dimensions.getDimension(16),
              color: AppColors.mainColor1,
              fontWeight: FontWeight.w400,
            ),
          ),
        ));
  }
}
