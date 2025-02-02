import 'package:flutter/material.dart';
import 'package:miniproject/constants/app_color.dart';
import 'package:miniproject/screen/homepage.dart';
import 'package:miniproject/widget/custom_button.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});
  final Icon arrowicon = Icon(
    Icons.arrow_forward,
    color: Colors.black,
  );

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final PageController _pageController = PageController();

  List<Widget> pages = [
    YourPageWidget("Page 1 Content"),
    YourPageWidget("screen two"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          controller: _pageController,
          itemCount: pages.length,
          itemBuilder: (context, index) {
            return pages[index];
          },
        ),
      ),
    );
  }
}

class YourPageWidget extends StatelessWidget {
  final String content;

  YourPageWidget(this.content);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(50.0),
        height: 812,
        width: 375,
        decoration: BoxDecoration(
          color: Lightblue
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Your holiday shopping delivered to Screen one",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: "Manrope",
                      fontWeight: FontWeight.w700,
                      color: headingcolor,
                    ),
                  ),
                ),
                Text(
                  "There's something for everyone to enjoy with Sweet Shop Favourites screen 1",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Manrope",
                    fontWeight: FontWeight.w500,
                    color: fontcolor,
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  "assets/images/image_icon.jpg",
                  height: 100,
                  width: 100,
                ),
              ],
            ),
            TextButton.icon(
              style: buttonPrimary,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return HomePage();
                  },
                ));
              },
              label: const Text(
                "Get Started",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              icon: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}