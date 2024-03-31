import 'package:flutter/material.dart';
import 'package:miniproject/constants/app_color.dart';
import 'package:miniproject/screen/Category2.dart';
import 'package:miniproject/screen/Category_one.dart';
import 'package:miniproject/screen/favurite.dart';
import 'package:miniproject/screen/more.dart';
import 'package:miniproject/widget/card_item.dart';
import 'package:miniproject/widget/custom_search%20bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

List<String> cardimages = [
  "assets/images/Banner Card.png",
  "assets/images/Banner Card (1).png",
  "assets/images/Banner Card (2).png",
];
List<Map<String, String>> makeupItemsData = [
  {
    "title": "EyeShadowKit",
    "subtitle": "Organic",
    "cost": "12.0",
    "imagepath": "assets/images/cceyeshadow.png",
  },
  {
    "title": "Highlighter",
    "subtitle": "Organic",
    "cost": "12.0",
    "imagepath": "assets/images/chighlther.png",
  },
  {
    "title": "Kajal",
    "subtitle": "Organic",
    "cost": "12.0",
    "imagepath": "assets/images/kajal.png",
  },
  {
    "title": "Mascara",
    "subtitle": "Organic",
    "cost": "1.02",
    "imagepath": "assets/images/cmascara.png",
  },
  {
    "title": "TvStick",
    "subtitle": "Organic",
    "cost": "12",
    "imagepath": "assets/images/paintstick.png",
  },
];

List<Map<String, String>> dealsItemsData = [
  {
    "title": "Highlighter",
    "subtitle": "Organic",
    "cost": "12.0",
    "imagepath": "assets/images/stickhighliter.png",
  },
  {
    "title": "Powder",
    "subtitle": "Organic",
    "cost": "12.0",
    "imagepath": "assets/images/cccccompact.png",
  },
  {
    "title": "Lipstick",
    "subtitle": "Organic",
    "cost": "12.0",
    "imagepath": "assets/images/clipstick.png",
  },
  {
    "title": "Concealer",
    "subtitle": "Organic",
    "cost": "12.0",
    "imagepath": "assets/images/concealer.png",
  },
  {
    "title": "MateLipstick",
    "subtitle": "Organic",
    "cost": "12",
    "imagepath": "assets/images/MATTE.PNG",
  },
];

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> pages = [Categoryone(), Categorytwo(), favourite(), More()];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    if (index == 1) {
  
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Categoryone()));
    }
    if (index == 2) {
      
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Categorytwo()));
    }
     
    if (index == 3) {
      
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => favourite()));
    }
    if (index == 4) {
      
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => More()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 100,
            leadingWidth: 70,
            backgroundColor: Lightblue,
            title: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                "Hey, Hilal",
                style: TextStyle(
                  fontFamily: "Manrope",
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color:Black1,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Icon(Icons.shopping_bag_outlined),
              ),
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(100.0),
              child: Column(
                children: [
                  Center(
                    child: CustomBar(
                      hintText: "Search Products or store",
                      prefixIcon: Icons.search,
                      prefixiconcolor: greyscale,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Delivery to",
                              style: TextStyle(
                                fontFamily: "Manrope",
                                fontSize: 11,
                                fontWeight: FontWeight.w800,
                                color: greyscale,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Green Way 3000, Sylhet",
                                  style: TextStyle(
                                    fontFamily: "Manrope",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: greyscale,
                                  ),
                                ),
                                Icon(Icons.arrow_drop_down),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Within",
                              style: TextStyle(
                                fontFamily: "Manrope",
                                fontSize: 11,
                                fontWeight: FontWeight.w800,
                                color: greyscale,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "1 Hour",
                                  style: TextStyle(
                                    fontFamily: "Manrope",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: greyscale,
                                  ),
                                ),
                                Icon(Icons.arrow_drop_down),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 180,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(12.0),
                  itemCount: 3,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 12,
                    );
                  },
                  itemBuilder: (context, index) {
                    return buildCard(index, cardimages[index],
                        isFirstImage: index == 0);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "Recommended",
                  style: TextStyle(
                    fontFamily: "Manrope",
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: darkgrey,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                  height: 150,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    separatorBuilder: (context, _) => SizedBox(width: 12),
                    itemBuilder: (context, index) => Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CardItem(
                          title: makeupItemsData[index]["title"]!,
                          subtitle: makeupItemsData[index]["subtitle"]!,
                          cost: makeupItemsData[index]["cost"]!,
                          imagepath: makeupItemsData[index]["imagepath"]!,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "Deals on MakeUp",
                  style: TextStyle(
                    fontFamily: "Manrope",
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: darkgrey,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
                Container(
                  height: 150,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    separatorBuilder: (context, _) => SizedBox(width: 12),
                    itemBuilder: (context, index) => Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CardItem(
                          title: dealsItemsData[index]["title"]!,
                          subtitle: dealsItemsData[index]["subtitle"]!,
                          cost: dealsItemsData[index]["cost"]!,
                          imagepath:dealsItemsData[index]["imagepath"]!,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Lightblue,
            unselectedItemColor: Darkblue,
            onTap: _onTabTapped,
            currentIndex: _currentIndex,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: "Category",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket_outlined),
                label: "Shop",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: "Favourite",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_vert_outlined),
                label: "More",
              ),
            ],
          )
          ),
    );
  }

  Widget buildCard(int index, String imagePath, {bool isFirstImage = false}) =>
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imagePath,
              height: 120,
              width: isFirstImage ? 400 : 150,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 8,
          )
        ],
      );
}