import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miniproject/constants/app_color.dart';

class ShopCard extends StatelessWidget {
  final String title;
  final String subtitle;

  final String imagepath;

  ShopCard({
    required this.title,
    required this.subtitle,
    required this.imagepath, required Null Function() onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 130,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagepath,
            height: 110,
            width: 110,
          ),
          SizedBox(height: 10),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.right,
              ),
    
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Grey,
                    ),
                    textAlign: TextAlign.right,
                  ),
                
                
              
               
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Black1,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Black20,
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
    );
  }
}
 