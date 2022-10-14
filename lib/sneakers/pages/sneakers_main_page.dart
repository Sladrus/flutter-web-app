import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class SneakersMainPage extends StatefulWidget {
  const SneakersMainPage({Key? key}) : super(key: key);

  @override
  State<SneakersMainPage> createState() => _SneakersMainPageState();
}

final List<Map> myProducts = List.generate(
    10, (index) => {"id": index, "name": "Product Product $index"}).toList();

class _SneakersMainPageState extends State<SneakersMainPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
          child: DefaultTabController(
        length: 5,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverToBoxAdapter(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: EdgeInsets.only(left: 30),
                          child: Text(
                            "Welcome back",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.orange),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: EdgeInsets.only(left: 30),
                          child: Text(
                            "Categories",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TabBar(
                        mouseCursor: MouseCursor.uncontrolled,
                        labelColor: Colors.white,
                        isScrollable: true,
                        unselectedLabelColor: Colors.grey,
                        splashBorderRadius: BorderRadius.circular(10),
                        padding: EdgeInsets.only(
                            left: 30, right: 30, top: 5, bottom: 15),
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                        tabs: [
                          Tab(
                            text: "All",
                          ),
                          Tab(
                            text: "Nike",
                          ),
                          Tab(
                            text: "Adidas",
                          ),
                          Tab(
                            text: "Puma",
                          ),
                          Tab(
                            text: "Other",
                          ),
                        ]),
                  ],
                ),
              ),
            ];
          },
          body: Container(
            child:
                TabBarView(physics: NeverScrollableScrollPhysics(), children: [
              Container(
                margin: EdgeInsets.only(
                  left: 30,
                  right: 30,
                ),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            mainAxisExtent: 240,
                            maxCrossAxisExtent: 200,
                            //childAspectRatio: 3 / 5,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 10),
                    itemCount: myProducts.length,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: EdgeInsets.only(
                            top: 15,
                          ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10, right: 30),
                                child: Text(
                                  myProducts[index]["name"],
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                  child: Container(
                                      child: Icon(
                                Icons.photo,
                                size: 50,
                              ))),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Price \$"),
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10)),
                                        gradient: LinearGradient(
                                            colors: [
                                              Colors.orange.shade400,
                                              Colors.orange.shade200,
                                            ],
                                            begin: const FractionalOffset(
                                                0.2, 0.0),
                                            end: const FractionalOffset(
                                                1.0, 0.5),
                                            stops: [0.0, 1.0],
                                            tileMode: TileMode.clamp),
                                      ),
                                      child: Center(
                                          child: Icon(Icons.add,
                                              color: Colors.white)),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ));
                    }),
              ),
              Container(),
              Container(),
              Container(),
              Container(),
            ]),
          ),
        ),
      )),
    );
  }
}
