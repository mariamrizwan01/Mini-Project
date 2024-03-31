import 'package:flutter/material.dart';
import 'package:miniproject/constants/app_color.dart';

class TabContainer extends StatelessWidget {
  final String title;
  final String imagepath;
  final VoidCallback? onPressed;

  TabContainer({
    required this.title,
    required this.imagepath,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.0), // Adjust the radius as needed
        child: Card(
          elevation: 5.0,
          child: Row(
            children: [
              Image.asset(
                imagepath,
                width: 130, // Adjust the width as needed
                height: 100, // Adjust the height as needed
              ),
              SizedBox(width: 8.0), // Add some space between image and text
              Text(
                title,
                style: TextStyle(
                    fontFamily: "Manrope",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: darkgrey,
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}