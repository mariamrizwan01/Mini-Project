import 'package:flutter/material.dart';
import 'package:miniproject/constants/app_color.dart';

final ButtonStyle buttonPrimary = TextButton.styleFrom(
  minimumSize: Size(20, 10),
  backgroundColor: Black10,
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(20),
    ),
  ),
);