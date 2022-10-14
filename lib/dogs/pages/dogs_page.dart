import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_webapp/dogs/routes/route_hepler.dart';
import 'package:flutter_webapp/dogs/texts/comfortaa_text.dart';
import 'package:flutter_webapp/utils/colors.dart';
import 'package:flutter_webapp/utils/dimensions.dart';
import 'package:flutter_webapp/widgets/texts/big_text.dart';
import 'package:get/get.dart';

class DogsPage extends StatefulWidget {
  const DogsPage({Key? key}) : super(key: key);

  @override
  State<DogsPage> createState() => _DogsPageState();
}

class _DogsPageState extends State<DogsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              // Align(
              //   alignment: Alignment.topCenter,
              //   child: Container(
              //     child: Container(
              //       margin: EdgeInsets.only(
              //         top: 50,
              //       ),
              //       child: image,
              //     ),
              //   ),
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(175)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://i.pinimg.com/originals/be/82/15/be821544fc5f328567cb538f96edb49a.jpg"))),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 250,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                width: 300,
                                child: Text("Готов завести себе нового друга?",
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      color: Color(0xFF0A3C64),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                    ),
                                    textAlign: TextAlign.left),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 20,
                                ),
                                width: 300,
                                child: Text(
                                    "У нас ты найдешь самых милых питмоцев. Все они ждут, чтобы стать твоим новым другом.",
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      color: Color(0xFF757575),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.left),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Get.toNamed(RouteHelper.getDogs());
                              });
                            },
                            child: Container(
                              height: 50,
                              margin: EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                  color: Color(0xFF0A3C64),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Text(
                                  "Начать",
                                  style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
