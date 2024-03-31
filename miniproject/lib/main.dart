import 'package:flutter/material.dart';
import 'package:miniproject/widget/cart_module.dart';
import 'package:miniproject/widget/cart_page.dart';
import 'package:miniproject/widget/tabbar.dart';
import 'package:scoped_model/scoped_model.dart';

void main() =>
 runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CartModel model = CartModel(); // Create an instance of CartModel

    return ScopedModel<CartModel>(
      model: model,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopping Cart',
        home: AppTabBar(),
        
        routes: {'/cart': (context) => CartPage()},
      ),
    );
  }
}