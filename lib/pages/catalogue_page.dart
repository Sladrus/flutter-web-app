import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webapp/utils/dimensions.dart';
import 'package:flutter_webapp/widgets/buttons/soft_button.dart';
import 'package:flutter_webapp/widgets/texts/big_text.dart';
import 'package:flutter_webapp/widgets/texts/small_text.dart';
import 'package:get/get.dart';

class CataloguePage extends StatefulWidget {
  const CataloguePage({Key? key}) : super(key: key);

  @override
  State<CataloguePage> createState() => _CataloguePageState();
}

class _CataloguePageState extends State<CataloguePage> {
  PageController _pageController = new PageController();
  double currentPageValue = 0.0;

  void onTap() {
    setState(() {
      Get.back();
    });
  }

  List<String> routes = [
    "/dogs",
    "/sneakers",
    "/dogs",
    "/sneakers",
  ];

  List<String> gifs = [
    "gif/7211975.gif",
    "gif/7403022.gif",
    "gif/7742970.gif",
    "gif/7994384.gif",
  ];

  @override
  Widget build(BuildContext context) {
    var width = defaultTargetPlatform == TargetPlatform.windows ||
            defaultTargetPlatform == TargetPlatform.macOS
        ? Dimensions.deviceScreenWidth - 100
        : Dimensions.deviceScreenWidth;

    _pageController.addListener(() {
      setState(() {
        currentPageValue = _pageController.page!;
      });
    });

    void onTapRight() {
      setState(() {
        _pageController.nextPage(
            duration: Duration(milliseconds: 1000), curve: Curves.ease);
      });
    }

    void onTapLeft() {
      setState(() {
        _pageController.previousPage(
            duration: Duration(milliseconds: 1000), curve: Curves.ease);
      });
    }

    void onTap() {
      setState(() {
        //var index = _pageController.page as int;
        Get.toNamed('/dogs');
      });
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: width,
          height: Dimensions.deviceScreenHeight,
          color: Colors.white,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Get.back();
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        top: Dimensions.getDimension(5),
                        left: Dimensions.getDimension(5),
                      ),
                      width: Dimensions.getDimension(50),
                      height: Dimensions.getDimension(50),
                      child: Icon(
                        Icons.arrow_back,
                        size: Dimensions.getDimension(28),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                      top: Dimensions.getDimension(50),
                      bottom: Dimensions.getDimension(20),
                    ),
                    child: BigText(
                      text: "Выберите нишу:",
                      size: Dimensions.getDimension(24),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ]),
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.getDimension(20),
                      right: Dimensions.getDimension(20)),
                  child: SmallText(
                    text:
                        "Веб-приложения в Телеграме на любой вкус. Бронируйте столики, заказывайте еду, обменивайте деньги.",
                    size: Dimensions.getDimension(14),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  //margin: const EdgeInsets.only(top: 50),
                  height: Dimensions.getDimension(500),
                  child: PageView.builder(
                      controller: _pageController,
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: ((context, index) {
                        return Transform(
                          transform: Matrix4.identity()
                            ..rotateX(currentPageValue - index)
                            ..rotateZ((currentPageValue - index) / 3),
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: Dimensions.getDimension(20)),
                            height: Dimensions.getDimension(200),
                            child: Stack(children: [
                              Container(
                                height: Dimensions.getDimension(300),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: Dimensions.getDimension(50),
                                        height: Dimensions.getDimension(50),
                                        child: Container(
                                          child: GestureDetector(
                                            onTap: onTapLeft,
                                            child: Icon(
                                              Icons.keyboard_arrow_left,
                                              size: Dimensions.getDimension(30),
                                            ),
                                          ),
                                        )),
                                    Container(
                                      child: GestureDetector(
                                        onTap: onTapRight,
                                        child: Icon(
                                          Icons.keyboard_arrow_right,
                                          size: Dimensions.getDimension(30),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: Dimensions.getDimension(50),
                                        bottom: Dimensions.getDimension(20)),
                                    width: Dimensions.getDimension(200),
                                    height: Dimensions.getDimension(200),
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(
                                          Dimensions.getDimension(15)),
                                      // image: DecorationImage(
                                      //     fit: BoxFit.contain,
                                      //     image: AssetImage(gifs[index]))
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        bottom: Dimensions.getDimension(20)),
                                    child: BigText(
                                      text: "Заголовок",
                                      size: Dimensions.getDimension(20),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        bottom: Dimensions.getDimension(20)),
                                    height: Dimensions.getDimension(80),
                                    child: SmallText(
                                      text:
                                          "Описаниe Описаниe Описаниe Описаниe Описаниe Описаниe Описаниe Описаниe Описаниe Описаниe Описаниe Описаниe Описаниe Описаниe Описаниe Описаниe Описаниe Описаниe Описаниe Описаниe ",
                                      size: Dimensions.getDimension(14),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Container(
                                    child: SoftButton(
                                      text: "Открыть",
                                      onTap: onTap,
                                      // onTap: (int index) {
                                      //   setState(() {
                                      //     Get.toNamed('/dogs');
                                      //     //_pageController.nextPage(duration: Duration(milliseconds: 1000), curve: Curves.ease);
                                      //   });
                                      // },
                                    ),
                                  )
                                ],
                              ),
                            ]),
                          ),
                        );
                      })),
                ),
              ]),
        ),
      ),
    );
  }
}
