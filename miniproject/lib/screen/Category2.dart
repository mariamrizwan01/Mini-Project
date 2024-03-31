import 'package:flutter/material.dart';
import 'package:miniproject/constants/app_color.dart';
import 'package:miniproject/screen/lipstickshades.dart';
import 'package:miniproject/widget/container_card.dart';

class Categorytwo extends StatefulWidget {
  const Categorytwo({super.key});
  @override
  State<Categorytwo> createState() => _CategorytwoState();
}

List<Map<String, String>> ContainerCardData = [
  {
    "title": "LipstickShades",
    "subtitle": "Organic",
    "cost": "\$36/KG",
    "imagepath": "assets/images/shades1.png"
  },
  {
    "title": "TubeFoundations",
    "subtitle": "Organic",
    "cost": "\$90/KG",
    "imagepath": "assets/images/tubefoundation.png"
  },
  {
    "title": "CompactPowder",
    "subtitle": "Organic",
    "cost": "\$80/KG",
    "imagepath": "assets/images/compact2.png"
  },
  {
    "title": "BlushKit",
    "subtitle": "Fresh & Organic",
    "cost": "\$90/KG",
    "imagepath": "assets/images/blushkit.png"
  },
  {
    "title": "EyeShadowKit",
    "subtitle": " Organic",
    "cost": "\$60/KG",
    "imagepath": "assets/images/eyeshadow2.png"
  },
  {
    "title": "Mascara",
    "subtitle": " Organic",
    "cost": "\70/KG",
    "imagepath": "assets/images/mascara1.png"
  },
];

class _CategorytwoState extends State<Categorytwo> {
  void onSearchIconTap() {}

  void onShoppingBagIconTap() {}
  void MaybellineLipstickShadesTap() {
    print("MaybellineLipstickShades card tapped");
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => LipShades()), // Navigate to the Fishes screen
    );
  }

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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ActionChip(
                      elevation: 5.0,
                      padding: EdgeInsets.all(2.0),
                      label: Text('Lipstick'),
                      onPressed: () {},
                      backgroundColor: lightyellow,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ActionChip(
                      elevation: 5.0,
                      padding: EdgeInsets.all(2.0),
                      label: Text("EyeShadow"),
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      shape: StadiumBorder(
                        side: BorderSide(
                          width: 1,
                          color: greyscale,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ActionChip(
                      elevation: 8.0,
                      padding: EdgeInsets.all(2.0),
                      label: Text("BlushKit"),
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      shape: StadiumBorder(
                        side: BorderSide(
                          width: 1,
                          color: greyscale,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ActionChip(
                      elevation: 8.0,
                      padding: EdgeInsets.all(2.0),
                      label: Text("TubeFoundation"),
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      shape: StadiumBorder(
                        side: BorderSide(
                          width: 1,
                          color: greyscale,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ActionChip(
                      elevation: 8.0,
                      padding: EdgeInsets.all(2.0),
                      label: Text("Mascara"),
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      shape: StadiumBorder(
                        side: BorderSide(
                          width: 1,
                          color: greyscale,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Card(
                elevation: 10.0,
                margin: EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: ContainerCardData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return LipShades();
                          }));
                        },
                        child: ContainerCard(
                          title: ContainerCardData[index]["title"]!,
                          subtitle: ContainerCardData[index]["subtitle"]!,
                          cost: ContainerCardData[index]["cost"]!,
                          imagepath: ContainerCardData[index]["imagepath"]!,
                        ));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}