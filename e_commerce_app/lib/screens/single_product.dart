import 'package:e_commerce_app/widgets/variables.dart';
import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final String productImage;
  final double productPrice;
  final String productName;

  SingleProduct({this.productImage, this.productName, this.productPrice});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 200,
        width: 150,
        // color: Colors.red,
        child: Column(
          children: <Widget>[
            Container(
              height: 160,
              width: 120,
              decoration: BoxDecoration(
                //  color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage("assets/images/$productImage"),
                ),
              ),
            ),
            Text(
              "\$ ${productPrice.toString()}",
              style: priceTextStyle(),
            ),
            Text(
              productName,
              style: productTitleTextStyle(),
            )
          ],
        ),
      ),
    );
  }
}
