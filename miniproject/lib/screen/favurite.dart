import 'package:flutter/material.dart';

class favourite extends StatefulWidget {
  const favourite({super.key});

  @override
  State<favourite> createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
      appBar:AppBar(title: Text("favourite Screen"),) ,
      ),
    );
  }
}