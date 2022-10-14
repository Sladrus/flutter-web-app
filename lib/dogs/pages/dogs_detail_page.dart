import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_webapp/dogs/utils/app_constants.dart';
import 'package:get/get.dart';

import '../controllers/dogtype_controller.dart';

class DogsDetail extends StatelessWidget {
  final int id;
  final int currentType;

  DogsDetail({Key? key, required this.id, required this.currentType})
      : super(key: key);

  //var desc =
  //    "Лабрадо́р-ретри́вер (англ. labrador retriever) — порода собак. Первоначально была выведена в качестве охотничьей подружейной собаки. Лабрадоры используются на охоте, в качестве собак-поводырей, собак-спасателей, но главным образом в роли компаньонов. Порода берёт своё начало на острове Ньюфаундленд на восточном побережье Канады.";

  @override
  Widget build(BuildContext context) {
    var dogTypeController = Get.find<DogTypeController>();
    var dogType = dogTypeController.dogTypeList
        .firstWhere((element) => element.id! == currentType);
    var dog = dogType.dogs.firstWhere((element) => element.id! == id);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        primary: true,
        child: Stack(children: [
          Container(
            height: 900,
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            height: 400,
            //bottom: 300,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(AppConstants.BASE_URL +
                    AppConstants.UPLOADS_URI +
                    dog.icon!),
              )),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 275,
            child: Container(
              height: 200,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(75))),
              child: Container(
                  margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dog.name!,
                        style: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF0A3C64)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Пол",
                                style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF0A3C64)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                dog.gender!,
                                style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey.shade600),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Возраст",
                                style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF0A3C64)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                dog.age!,
                                style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey.shade600),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Тип",
                                style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF0A3C64)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                dogType.title!,
                                style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey.shade600),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.maxFinite,
                        child: Text(
                          dog.desc!,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Comfortaa',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade600),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Родословная",
                        style: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF0A3C64)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(dog.parents!.length!, (index) {
                          return Container(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Row(
                              children: [
                                Container(
                                    width: 75,
                                    height: 75,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fitWidth,
                                            image: NetworkImage(
                                                AppConstants.BASE_URL +
                                                    AppConstants.UPLOADS_URI +
                                                    dog.parents[index].icon!)),
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        dog.parents[index].title!,
                                        style: TextStyle(
                                            fontFamily: 'Comfortaa',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF0A3C64)),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        dog.parents[index].desc!,
                                        style: TextStyle(
                                            fontFamily: 'Comfortaa',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey.shade600),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xFF0A3C64).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                                child: Icon(
                              Icons.favorite_border,
                              color: Color(0xFF0A3C64),
                            )),
                          ),
                          Container(
                            width: 200,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xFF0A3C64),
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Text(
                                "Связаться с нами",
                                style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                margin: EdgeInsets.only(top: 20),
                width: 50,
                height: 50,
                child: Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.white,
                  size: 28,
                ),
              ),
            ),
          ),
        ]),
      )),
    );
  }
}
