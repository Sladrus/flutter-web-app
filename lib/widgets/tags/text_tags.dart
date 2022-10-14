import 'package:flutter/cupertino.dart';
import 'package:flutter_webapp/utils/colors.dart';
import 'package:flutter_webapp/utils/dimensions.dart';
import 'package:flutter_webapp/widgets/texts/big_text.dart';
import 'package:flutter_webapp/widgets/texts/small_text.dart';

class TextTags extends StatelessWidget {
  final String text;
  Color color = AppColors.mainColor3;
  TextTags({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.getDimension(30),
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.getDimension(20),
          vertical: Dimensions.getDimension(6)),
      decoration: BoxDecoration(
          color: AppColors.mainColor1,
          borderRadius: BorderRadius.circular(Dimensions.getDimension(15)),
          boxShadow: [
            BoxShadow(
              color: color,
              offset: Offset(0, 0),
              blurRadius: 1,
              spreadRadius: 1,
            )
          ]),
      child: SmallText(
        text: text,
        size: Dimensions.getDimension(14),
      ),
    );
  }
}
