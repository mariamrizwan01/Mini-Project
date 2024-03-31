import 'package:flutter/material.dart';
import 'package:miniproject/constants/app_color.dart';
import 'package:miniproject/widget/cart_module.dart';
import 'package:scoped_model/scoped_model.dart';

class LipShades extends StatefulWidget {
  const LipShades({Key? key}) : super(key: key);

  @override
  State<LipShades> createState() => _LipShadesState();
}

class _LipShadesState extends State<LipShades> {
  List<Product> _products = [
    Product(
        id: 1,
        title: "BrownShade",
        subtitle: "Organic",
        cost: 36.0,
        imagepath:
            "assets/images/lightbrown.png",
        qty: 1),
    Product(
        id: 2,
        title: "AmbitiousShade",
        subtitle: "Organic",
        cost: 90.0,
        imagepath:
            "assets/images/red.png",
        qty: 1),
    Product(
        id: 3,
        title: "FounderShade",
        subtitle: "Organic",
        cost: 80.0,
        imagepath:
            "assets/images/purple.png",
        qty: 1),
    Product(
        id: 4,
        title: "PioneerShade",
        subtitle: "Organic",
        cost: 60.0,
        imagepath:
            "assets/images/orange.png",
        qty: 1),
    Product(
      id: 5,
      title: "RomanticShade",
      subtitle: "Organic",
      cost: 60.0,
      imagepath:
          "assets/images/babypink.png",
      qty: 1,
    ),
    Product(
      id: 6,
      title: "InnovatorShade",
      subtitle: " Organic",
      cost: 70.0,
      imagepath:
          "assets/images/innovator.png",
      qty: 1,
    ),
  ];

  void onSearchIconTap() {}
  void onShoppingBagIconTap() {}
  void onBackButtonTap() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        backgroundColor:Darkblue,
        title: Text("Maybelline LipstickShades"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(context, '/cart'),
          )
        ],
      ),
      body:
          GridView.builder(
            padding: EdgeInsets.all(8.0),
            itemCount: _products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8, childAspectRatio: 0.8),
            itemBuilder: (context, index){
              return ScopedModelDescendant<CartModel>(
                  builder: (context, child, model) {
                return Card( child: Column( children: <Widget>[
                  Image.asset(_products[index].imagepath, height: 80, width: 80,),
                  Text(_products[index].title, style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(_products[index].subtitle),
                Text("\$${_products[index].cost.toStringAsFixed(2)}"),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                          child: Text("Add To Cart"),
                          onPressed: () => model.addProduct(_products[index])),
                  )
                ]));
              });
            },
          ),

      //     ListView.builder(
      //   itemExtent: 80,
      //   itemCount: _products.length,
      //   itemBuilder: (context, index) {
      //     return ScopedModelDescendant<CartModel>(
      //       builder: (context, child, model) {
      //         return ListTile(
      //             leading: Image.network(_products[index].imagepath),
      //             title: Text(_products[index].title),
      //             subtitle:
      //                 Text("\$${_products[index].cost.toStringAsFixed(2)}"),
      //             trailing: ElevatedButton(
      //                 child: Text("Add"),
      //                 onPressed: () => model.addProduct(_products[index])));
      //       },
      //     );
      //   },
      // ),
    );
  }
}

