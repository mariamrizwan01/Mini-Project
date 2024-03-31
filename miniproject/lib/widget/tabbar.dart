import 'package:flutter/material.dart';
import 'package:miniproject/constants/app_color.dart';
import 'package:miniproject/widget/blushkit.dart';
import 'package:miniproject/widget/compact.dart';
import 'package:miniproject/widget/eyeshadow.dart';
import 'package:miniproject/widget/foundation.dart';
import 'package:miniproject/widget/lipstick.dart';
import 'package:miniproject/widget/mascara.dart';

class AppTabBar extends StatefulWidget {
  @override
  _AppTabBarState createState() => _AppTabBarState();
}

class _AppTabBarState extends State<AppTabBar> {
  List<String> items = [
    "LipStick",
    "EyeShadow",
    "BlushKit",
    "Foundation",
    "Compact",
    "Mascara",
  ];
  int current = 0;
  List<Widget> tabContents = [
    LipStick(),
    EyeShadow(),
    BlushKit(),
    Foundation(),
    Compact(),
    Mascara(),
  ];
  void onSearchIconTap() {}

  void onShoppingBagIconTap() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        leadingWidth: 70,
        backgroundColor: Lightblue,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 1.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hey, Hilal",
                    style: TextStyle(
                      fontFamily: "Manrope",
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  Text(
                    "Shop",
                    style: TextStyle(
                      fontFamily: "Manrope",
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: headingcolor,
                    ),
                  ),
                  Text(
                    "By Category",
                    style: TextStyle(
                      fontFamily: "Manrope",
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: headingcolor,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 120),
                    child: InkWell(
                      onTap: onSearchIconTap,
                      child: Icon(Icons.search),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 120),
            child: InkWell(
              onTap: onShoppingBagIconTap,
              child: Icon(Icons.shopping_bag_outlined),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        margin: EdgeInsets.all(5),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              current = index;
                            },
                          );
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          margin: EdgeInsets.all(5),
                          width: 100,
                          height: 45,
                          decoration: BoxDecoration(
                              color:
                                  current == index ? Colors.white70 : fontcolor,
                              borderRadius: current == index
                                  ? BorderRadius.circular(15)
                                  : BorderRadius.circular(10),
                              border: current == index
                                  ? Border.all(color: Lightblue, width: 2)
                                  : null),
                          child: Center(
                            child: Text(
                              items[index],
                              style: TextStyle(
                                fontFamily: "Manrope",
                                fontWeight: FontWeight.w500,
                                color: current == index
                                    ? Colors.black
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: current == index,
                        child: Container(
                          height: 5,
                          width: 5,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Lightblue,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          


          Expanded(
            child: tabContents[current], 
          ),
          ],
        ),
      ),
    );
  }
}