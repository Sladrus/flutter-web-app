import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:get/get.dart';
import 'package:tele_web_app/tele_web_app.dart';

import '../controllers/dogtype_controller.dart';
import '../routes/route_hepler.dart';
import '../utils/app_constants.dart';

class DogsMainPage extends StatefulWidget {
  const DogsMainPage({Key? key}) : super(key: key);

  @override
  State<DogsMainPage> createState() => _DogsMainPageState();
}

class _DogsMainPageState extends State<DogsMainPage>
    with TickerProviderStateMixin {
  var parser = EmojiParser();

  var hand = Emoji('hand', '👋');
  var handDown = Emoji('handDown', '👇');

  List<Image> images = [];
  late double width;
  late String? username;

  late TabController tabController;

  @override
  void initState() {
    super.initState();

    final telegram = TeleWebApp();
    username = telegram.initDataUnsafe.user?.firstName;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: GetBuilder<DogTypeController>(
            builder: (dogTypeController) {
              tabController = TabController(
                  length: dogTypeController.dogTypeList.length + 1,
                  vsync: this);
              return !dogTypeController.isLoaded
                  ? Center(
                      child: CircularProgressIndicator(
                      color: Color(0xFF0A3C64),
                    ))
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      Get.back();
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(top: 20),
                                    width: 50,
                                    height: 50,
                                    child: Icon(
                                      Icons.keyboard_arrow_left,
                                      color: Color(0xFF0A3C64),
                                      size: 28,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      Get.back();
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(top: 20),
                                    width: 50,
                                    height: 50,
                                    child: Icon(
                                      Icons.favorite,
                                      color: Color(0xFF0A3C64),
                                      size: 28,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              margin: EdgeInsets.only(
                                left: 20,
                                right: 20,
                                top: 20,
                              ),
                              child: Text(
                                  "Добро пожаловать, $username" + hand.code,
                                  style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    color: Color(0xFF0A3C64),
                                    fontSize: 28,
                                    fontWeight: FontWeight.w900,
                                  ),
                                  textAlign: TextAlign.left),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              margin:
                                  EdgeInsets.only(left: 20, right: 20, top: 10),
                              child:
                                  Text("Ищешь питомца? Выбирай" + handDown.code,
                                      style: TextStyle(
                                        fontFamily: 'Comfortaa',
                                        color: Colors.grey.shade600,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      textAlign: TextAlign.left),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            height: 50,
                            decoration: BoxDecoration(),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TabBar(
                                controller: tabController,
                                isScrollable: true,
                                labelColor: Color(0xFF0A3C64),
                                unselectedLabelColor: Colors.grey.shade600,
                                indicatorColor: Colors.transparent,
                                splashBorderRadius: BorderRadius.circular(50),
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, top: 5, bottom: 5),
                                tabs: List.generate(tabController.length,
                                    (index) {
                                  return index == 0
                                      ? Tab(
                                          child: Row(
                                          children: [
                                            Icon(Icons.filter_list),
                                            SizedBox(width: 15),
                                            Text("Все")
                                          ],
                                        ))
                                      : Tab(
                                          text: dogTypeController
                                              .dogTypeList[index - 1].title);
                                }),
                              ),
                            ),
                          ),
                          Container(
                            height: 250,
                            width: double.maxFinite,
                            child: Container(
                              child: TabBarView(
                                physics: NeverScrollableScrollPhysics(),
                                controller: tabController,
                                children: List.generate(tabController.length,
                                    (tabindex) {
                                  int length;
                                  var dogsList;
                                  if (tabindex == 0) {
                                    dogsList = dogTypeController.dogsList;
                                    length = dogsList.length;
                                  } else {
                                    dogsList = dogTypeController
                                        .dogTypeList[tabindex - 1].dogs;
                                    length = dogsList.length;
                                  }

                                  return Container(
                                    width: Get.width,
                                    padding: EdgeInsets.only(top: 20),
                                    child: ListView.builder(
                                        physics: BouncingScrollPhysics(),
                                        scrollDirection: Axis.horizontal,
                                        itemCount: length,
                                        itemBuilder: (context, index) {
                                          return GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                Get.toNamed(
                                                    RouteHelper.getDogDetail(
                                                        dogsList[index].id!,
                                                        dogsList[index]
                                                            .dogTypeId!));
                                              });
                                            },
                                            child: Stack(
                                              children: [
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(left: 20),
                                                  height: 200,
                                                  //width: 135,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                      image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: NetworkImage(
                                                            AppConstants
                                                                    .BASE_URL +
                                                                AppConstants
                                                                    .UPLOADS_URI +
                                                                dogsList[index]
                                                                    .icon!,
                                                          ))),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Container(
                                                      margin: EdgeInsets.all(5),
                                                      height: 70,
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors
                                                                  .transparent,
                                                              offset:
                                                                  Offset(0, 0),
                                                              blurRadius: 1,
                                                              spreadRadius: 1,
                                                            ),
                                                          ]),
                                                      child: Container(
                                                        margin:
                                                            EdgeInsets.all(10),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Text(
                                                                dogsList[index]
                                                                    .name!,
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Comfortaa',
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                              SizedBox(
                                                                height: 5,
                                                              ),
                                                              Text(
                                                                "Пол: ${dogsList[index].gender!}",
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Comfortaa',
                                                                    color: Colors
                                                                        .grey
                                                                        .shade600,
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                              ),
                                                              Text(
                                                                "Возраст: ${dogsList[index].age!}",
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Comfortaa',
                                                                    color: Colors
                                                                        .grey
                                                                        .shade600,
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                              ),
                                                            ]),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                  );
                                }),
                              ),
                            ),
                          ),
                        ]);
            },
          ),
        ),
      ),
    );
  }
}
