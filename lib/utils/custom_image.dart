// import 'dart:html';
// import 'dart:ui' as ui;

// import 'package:flutter/material.dart';

// class CustomImage extends StatelessWidget {
//   final String imageUrl;

//   const CustomImage({Key? key, required this.imageUrl}) : super(key: key);

//   Widget build(BuildContext context) {
//     ui.platformViewRegistry.registerViewFactory(
//       imageUrl,
//       (int viewId) => ImageElement()..src = imageUrl,
//     );
//     return HtmlElementView(
//       viewType: imageUrl,
//     );
//   }
// }
