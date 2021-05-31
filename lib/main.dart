import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_7_to_be_del/foodItem_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

// creating the home screen
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // Startting with the code for the screen
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.shopping_cart_outlined,
          color: Colors.black,
        ),
      ),
      // Starting with the body
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                      height: 450,
                      child: Carousel(
                        boxFit: BoxFit.cover,
                        autoplay: false,
                        animationCurve: Curves.fastOutSlowIn,
                        animationDuration: Duration(milliseconds: 1000),
                        dotSize: 6,
                        dotColor: Colors.white,
                        dotIncreasedColor: Colors.white,
                        dotBgColor: Colors.transparent,
                        dotVerticalPadding: 10,
                        dotPosition: DotPosition.bottomCenter,
                        showIndicator: true,
                        indicatorBgPadding: 17,
                        images: [
                          NetworkImage(
                              "https://3dandroidwallpaper.com/wp-content/uploads/2020/09/Food-Wallpaper-For-Android.jpg"),
                          NetworkImage(
                              "https://3dandroidwallpaper.com/wp-content/uploads/2020/09/Android-Wallpaper-Food.jpg"),
                          NetworkImage(
                              "https://3dandroidwallpaper.com/wp-content/uploads/2020/09/Food-HD-Wallpapers-For-Android.jpg"),
                        ],
                      )),
                  // Starting with the widget which will come above this carousel
                  Padding(
                    padding: EdgeInsets.only(
                      top: 300,
                    ),
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(
                                0.8,
                              ),
                              Colors.transparent,
                            ],
                            stops: [
                              0,
                              0.3,
                            ]),
                      ),
                    ),
                  )
                ],
              ),

              // Adding the next widget which will come after the stack
              Container(
                height: 2400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      28,
                    ),
                    topRight: Radius.circular(
                      28,
                    ),
                  ),
                ),
                padding: EdgeInsets.only(
                  top: 30,
                ),
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      TabBar(
                        tabs: [
                          Tab(
                            child: Text(
                              "Pizza",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          // copying and pasting 2 times
                          Tab(
                            child: Text(
                              "Sushi",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Drinks",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                        indicatorColor: Colors.transparent,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey.shade400,
                      ),
                      // Adding the widgets which will be displayed iin the tabs
                      Padding(
                        padding: EdgeInsets.only(
                          left: 35,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Filters",
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      12,
                                    ),
                                    border: Border.all(
                                      width: 1,
                                    )),
                                padding: EdgeInsets.only(
                                  top: 1.5,
                                  bottom: 1.5,
                                  left: 14,
                                  right: 14,
                                ),
                                child: Text(
                                  "Spicy",
                                  style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )),
                            SizedBox(
                              width: 16,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      12,
                                    ),
                                    border: Border.all(
                                      width: 1,
                                    )),
                                padding: EdgeInsets.only(
                                  top: 1.5,
                                  bottom: 1.5,
                                  left: 14,
                                  right: 14,
                                ),
                                child: Text(
                                  "Vegan",
                                  style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )),
                          ],
                        ),
                      ),

                      // Adding some more widgets
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                          child: TabBarView(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 30,
                              right: 30,
                            ),
                            child: Column(
                              children: [
                                foodItem(),
                                foodItem(),
                                foodItem(),
                                foodItem(),
                                // pasting multiple times
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 30,
                              right: 30,
                            ),
                            child: Column(
                              children: [
                                foodItem(),
                                foodItem(),
                                foodItem(),
                                foodItem(),
                                // pasting multiple times
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 30,
                              right: 30,
                            ),
                            child: Column(
                              children: [
                                foodItem(),
                                foodItem(),
                                foodItem(),
                                foodItem(),
                                // pasting multiple times
                              ],
                            ),
                          ),
                          // Final output in the next video
                        ],
                      ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        color: Colors.black,
      ),
    );
  }
}
