import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class SneakersPage extends StatefulWidget {
  const SneakersPage({Key? key}) : super(key: key);

  @override
  State<SneakersPage> createState() => _SneakersPageState();
}

class _SneakersPageState extends State<SneakersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.orange.shade400,
                  Colors.orange.shade200,
                ],
                begin: const FractionalOffset(0.5, 0.0),
                end: const FractionalOffset(1.0, 0.8),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
        ),
        Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 50, right: 50),
                child: Text(
                  "Comfort is everything",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 50, right: 50),
                child: Text(
                  "Find the best shoes for comfort in your daily activities.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Get.toNamed('/sneakers/main');
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    height: 70,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ]),
      ]),
    ));
  }
}
