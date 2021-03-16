import 'package:e_commerce_app/model/product.dart';
import 'package:e_commerce_app/screens/home_page.dart';
import 'package:e_commerce_app/screens/single_product.dart';
import 'package:e_commerce_app/widgets/variables.dart';
import 'package:flutter/material.dart';

class ListProduct extends StatelessWidget {
  final String productTitle;
  final List<Product> snapShot;
  ListProduct({this.productTitle, this.snapShot});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {
                print(00);
              }),
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
              onPressed: () {
                print(00);
              }),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 50,
                  // color: Colors.yellow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        productTitle,
                        style: homeHeadTextStyle(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 700,
                  child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      scrollDirection: Axis.vertical,
                      childAspectRatio: 0.7,
                      children: snapShot
                          .map(
                            (e) => SingleProduct(
                              productImage: e.image,
                              productName: e.name,
                              productPrice: e.price,
                            ),
                          )
                          .toList()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
