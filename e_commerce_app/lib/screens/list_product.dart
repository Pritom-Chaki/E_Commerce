import 'package:e_commerce_app/screens/home_page.dart';
import 'package:e_commerce_app/screens/single_product.dart';
import 'package:e_commerce_app/widgets/variables.dart';
import 'package:flutter/material.dart';

class ListProduct extends StatelessWidget {
  final String productTitle;
  final snapShot;
  ListProduct({this.productTitle, this.snapShot});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (ctx) => HomePage()));
          },
        ),
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
                  height: 1000,
                  child: GridView.builder(
                    itemCount: snapShot.data.documents.length,
                    itemBuilder: (context, index) => SingleProduct(
                      productName: snapShot.data.documents[index]["name"],
                      productPrice: snapShot.data.documents[index]["price"],
                      productImage: snapShot.data.documents[index]["image"],
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 10,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
