import 'package:flutter/material.dart';
import 'package:miniproject/widget/details.dart';
import 'package:miniproject/widget/tabbarcontainer.dart';

class BlushKit extends StatefulWidget {
  const BlushKit({Key? key}) : super(key: key);

  @override
  State<BlushKit> createState() => _BlushKitState();
}

List<Map<String, dynamic>> ContainerCardData = [
  {
    "title": "LipstickShades",
    "subtitle": "Organic",
    "cost": "\$36/KG",
    "imagepath": "assets/images/shades1.png",
  },
  {
    "title": "TubeFoundations",
    "subtitle": "Organic",
    "cost": "\$90/KG",
    "imagepath": "assets/images/tubefoundation.png",
  },
  {
    "title": "CompactPowder",
    "subtitle": "Organic",
    "cost": "\$80/KG",
    "imagepath": "assets/images/compact2.png",
  },
  {
    "title": "BlushKit",
    "subtitle": "Fresh & Organic",
    "cost": "\$90/KG",
    "imagepath": "assets/images/blushkit.png",
  },
  {
    "title": "EyeShadowKit",
    "subtitle": " Organic",
    "cost": "\$60/KG",
    "imagepath": "assets/images/eyeshadow2.png",
  },
  {
    "title": "Mascara",
    "subtitle": " Organic",
    "cost": "\$70/KG",
    "imagepath": "assets/images/mascara1.png",
  },
];

class _BlushKitState extends State<BlushKit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        elevation: 10.0,
        margin: EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: ContainerCardData.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                // Navigate to the details screen or any desired screen here.
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return TabContainer(
                    title: ContainerCardData[index]["title"]!,
                    imagepath: ContainerCardData[index]["imagepath"]!,
                    onPressed: () {
                      // Add the functionality you want to execute when the TabContainer is pressed.
                      // For example, you can navigate to a new screen here.
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return DetailsScreen(title: ContainerCardData[index]["title"]!);
                      }));
                    },
                  );
                }));
              },
              child: TabContainer(
                title: ContainerCardData[index]["title"]!,
                imagepath: ContainerCardData[index]["imagepath"]!,
                onPressed: () {
                  // Add the functionality you want to execute when the TabContainer is pressed.
                  // For example, you can navigate to a new screen here.
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return DetailsScreen(title: ContainerCardData[index]["title"]!);
                  }));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}