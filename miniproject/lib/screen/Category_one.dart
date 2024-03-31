import 'package:flutter/material.dart';
import 'package:miniproject/constants/app_color.dart';
import 'package:miniproject/widget/shopcard.dart';

class Categoryone extends StatefulWidget {
  const Categoryone({Key? key}) : super(key: key);

  @override
  State<Categoryone> createState() => _CategoryoneState();
}

List<Map<String, String>> ShopCardData = [
  {
    "title": "Maybelline EyeShadowKit",
    "subtitle": "Organic",
    "imagepath":
        "assets/images/eyeshadow.png"
  },
  {
    "title": "Maybelline Foundation ",
    "subtitle": "Organic",
    "imagepath":
        "assets/images/liauqid foudntion.png"
  },
  {
    "title": "Maybelline Mascara",
    "subtitle": "Organic",
    "imagepath":
        "assets/images/mascara.png.png"
  },
  {
    "title": "Maybelline BlushKit",
    "subtitle": "Organic",
    "imagepath":
        "assets/images/blush.png"
  },
  {
    "title": "Maybelline Lipstick",
    "subtitle": "Organic",
    "imagepath":
        "assets/images/listlipstick.png"
  },
  {
    "title": "Maybelline Compact",
    "subtitle": "Organic",
    "imagepath":
        "assets/images/compact.png"
  },
];

class _CategoryoneState extends State<Categoryone> {
  void onSearchIconTap() {}

  void onShoppingBagIconTap() {}


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 200,
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
                        fontSize: 40,
                        fontWeight: FontWeight.w300,
                        color: headingcolor,
                      ),
                    ),
                    Text(
                      "By Category",
                      style: TextStyle(
                        fontFamily: "Manrope",
                        fontSize: 35,
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return ShopCard(
                title: ShopCardData[index]["title"]!,
                subtitle: ShopCardData[index]["subtitle"]!,
                imagepath: ShopCardData[index]["imagepath"]!, onTap: () {  },
              );
            },
            itemCount: ShopCardData.length,
          ),
        ),
      ),
    );
  }
}