import 'package:e_commerce_app/provider/product_provider.dart';
import 'package:e_commerce_app/screens/checkout_screen.dart';
import 'package:e_commerce_app/widgets/cart_single_product.dart';
import 'package:e_commerce_app/widgets/variables.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

ProductProvider productProvider;

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    productProvider = Provider.of<ProductProvider>(context);

    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.only(bottom: 10),
        height: 60,
        //  width: 100,
        // color: Colors.red,
        child: RaisedButton(
          onPressed: () {
/////
          },
          color: Colors.indigo[300],
          child: Text(
            "Continous",
            style: productHeadTextStyle(),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Cart",
          style: myStyle(20, Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              // Navigator.of(context).pushReplacement(
              //   MaterialPageRoute(
              //     builder: (ctx) => HomePage(),
              //   ),
              // );
            }),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      body: ListView.builder(
        itemCount: productProvider.getCardModelListLength,
        itemBuilder: (ctx, index) => CartSingleProduct(
          productImage: productProvider.getCardModelList[index].image,
          productName: productProvider.getCardModelList[index].name,
          productPrice: productProvider.getCardModelList[index].price,
          productQuentity: productProvider.getCardModelList[index].quantity,
        ),
      ),
    );
  }
}
