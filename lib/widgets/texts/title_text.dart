// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:delayed_display/delayed_display.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_webapp/utils/colors.dart';
// import 'package:flutter_webapp/utils/dimensions.dart';
// import 'package:google_fonts/google_fonts.dart';

// class TitleText extends StatelessWidget {
//   final String text;
//   Color color = AppColors.mainColor2;
//   double size = Dimensions.getDimension(34);
//   FontWeight fontWeight = FontWeight.bold;

//   TitleText({Key? key, required this.text}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTextStyle(
//       textAlign: TextAlign.left,
//       style: GoogleFonts.roboto(
//           fontSize: size, fontWeight: fontWeight, color: Colors.black),
//       child: Align(
//         alignment: Alignment.topLeft,
//         child: AnimatedTextKit(
//           repeatForever: true,
//           isRepeatingAnimation: true,
//           animatedTexts: [
//             RotateAnimatedText("Некомпетентность.",
//                 textAlign: TextAlign.left,
//                 alignment: Alignment.topLeft,
//                 duration: Duration(milliseconds: 2000)),
//             RotateAnimatedText("Бездарность. \nВсе будет лагать.",
//                 textAlign: TextAlign.left,
//                 alignment: Alignment.topLeft,
//                 duration: Duration(milliseconds: 2000)),
//             RotateAnimatedText("Лучше не найдешь.",
//                 textAlign: TextAlign.left,
//                 alignment: Alignment.topLeft,
//                 duration: Duration(milliseconds: 2000)),
//             RotateAnimatedText("Худшие приложения.",
//                 textAlign: TextAlign.left,
//                 alignment: Alignment.topLeft,
//                 duration: Duration(milliseconds: 2000)),
//             RotateAnimatedText("Уходи отсюда.",
//                 textAlign: TextAlign.left,
//                 alignment: Alignment.topLeft,
//                 duration: Duration(milliseconds: 2000)),
//           ],
//         ),
//       ),
//     );
//   }
// }
