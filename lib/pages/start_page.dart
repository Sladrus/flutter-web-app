// import 'package:delayed_display/delayed_display.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter/src/scheduler/ticker.dart';
// import 'package:flutter_webapp/pages/catalogue_page.dart';
// import 'package:flutter_webapp/utils/colors.dart';
// import 'package:flutter_webapp/utils/dimensions.dart';
// import 'package:flutter_webapp/widgets/buttons/soft_button.dart';
// import 'package:flutter_webapp/widgets/tags/text_tags.dart';
// import 'package:flutter_webapp/widgets/texts/big_text.dart';
// import 'package:flutter_webapp/widgets/texts/title_text.dart';
// import 'package:get/get.dart';
// import 'package:lottie/lottie.dart';

// class StartPage extends StatefulWidget {
//   @override
//   State<StartPage> createState() => _StartPageState();
// }

// class _StartPageState extends State<StartPage> with TickerProviderStateMixin {
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   bool isButtonPressed = false;

//   void buttonPressed() {
//     setState(() {
//       Get.toNamed('/catalogue');
//     });
//   }

//   List<TextTags> tags = [
//     TextTags(
//       text: "Fast",
//     ),
//     TextTags(
//       text: "Powerful",
//     ),
//     TextTags(
//       text: "Secure",
//     ),
//     TextTags(
//       text: "Private",
//     ),
//     TextTags(
//       text: "Unlimited",
//     ),
//     TextTags(
//       text: "Synced",
//     ),
//     TextTags(
//       text: "100% Approve",
//     ),
//     TextTags(
//       text: "Reliable",
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     var width = defaultTargetPlatform == TargetPlatform.windows ||
//             defaultTargetPlatform == TargetPlatform.macOS
//         ? Dimensions.deviceScreenWidth - 100
//         : Dimensions.deviceScreenWidth;
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SingleChildScrollView(
//         //physics: BouncingScrollPhysics(),
//         child: Center(
//           child: Container(
//             width: width,
//             height: Dimensions.deviceScreenHeight,
//             color: Colors.white,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   width: Dimensions.getDimension(80),
//                   height: Dimensions.getDimension(80),
//                   margin: EdgeInsets.only(top: Dimensions.getDimension(50)),
//                   alignment: Alignment.center,
//                   child: Lottie.asset(
//                     "icons/80106-telegram-icon.json",
//                     frameRate: FrameRate.max,
//                     repeat: true,
//                     reverse: true,
//                     width: Dimensions.getDimension(80),
//                     height: Dimensions.getDimension(80),
//                     filterQuality: FilterQuality.high,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Container(
//                   alignment: Alignment.bottomCenter,
//                   margin: EdgeInsets.only(bottom: Dimensions.getDimension(50)),
//                   child: Center(
//                     child: BigText(
//                       text: "Telegram",
//                       size: Dimensions.getDimension(24),
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//                 Container(
//                     padding: EdgeInsets.only(
//                         left: Dimensions.getDimension(20),
//                         right: Dimensions.getDimension(20),
//                         top: Dimensions.getDimension(5),
//                         bottom: Dimensions.getDimension(5)),
//                     width: width,
//                     child: Wrap(
//                         spacing: Dimensions.getDimension(10),
//                         runSpacing: Dimensions.getDimension(10),
//                         children: tags)),
//                 SizedBox(
//                   height: Dimensions.getDimension(20),
//                 ),
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   height: Dimensions.getDimension(160),
//                   margin: EdgeInsets.only(
//                     left: Dimensions.getDimension(20),
//                   ),
//                   child: TitleText(text: "join the revolution today."),
//                 ),
//                 SizedBox(
//                   height: Dimensions.getDimension(20),
//                 ),
//                 SoftButton(
//                   text: "Начать",
//                   onTap: buttonPressed,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   // @override
//   // Widget build(BuildContext context) {
//   //   return Column(
//   //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   //     children: [
//   //       Container(
//   //         width: 250,
//   //         child: Lottie.network(
//   //             'https://assets8.lottiefiles.com/private_files/lf30_5axgcyri.json'),
//   //       ),
//   //       Center(
//   //           child: NeuButton(
//   //         onTap: buttonPressed,
//   //         isButtonPressed: isButtonPressed,
//   //       )),
//   //     ],
//   //   );
//   // }
// }
