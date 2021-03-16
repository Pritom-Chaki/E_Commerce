import 'package:e_commerce_app/widgets/variables.dart';
import 'package:flutter/material.dart';

import 'details_screen.dart';

class SingleProduct extends StatelessWidget {
  final String productImage;
  final double productPrice;
  final String productName;

  SingleProduct({this.productImage, this.productName, this.productPrice});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (ctx) => DetailScreen(
                productImage: productImage,
                productName: productName,
                productPrice: productPrice,
              ),
            ),
          );
        },
        child: Container(
          height: 260,
          width: 150,
          //color: Colors.red,
          child: Column(
            children: <Widget>[
              Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  //  color: Colors.grey,
                  image: DecorationImage(
                    image: NetworkImage(productImage),
                  ),
                ),
              ),
              Text(
                "\$ ${productPrice.toString()}",
                style: priceTextStyle(),
              ),
              Container(
                height: 50,
                child: Text(
                  productName,
                  style: productTitleTextStyle(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
