import 'package:e_commerce_app/screens/home_page.dart';
import 'package:e_commerce_app/screens/single_product.dart';
import 'package:e_commerce_app/widgets/variables.dart';
import 'package:flutter/material.dart';

class ListProduct extends StatelessWidget {
  final String productTitle;
  ListProduct({this.productTitle});
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
                  height: 700,
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.75,
                    children: [
                      SingleProduct(
                        productImage: "shoeman.png",
                        productName: "Men Shoe",
                        productPrice: 55.0,
                      ),
                      SingleProduct(
                        productImage: "shoewoman.png",
                        productName: "Woman Shoe",
                        productPrice: 52.0,
                      ),
                      SingleProduct(
                        productImage: "ring.png",
                        productName: "Weeding Ring",
                        productPrice: 555.0,
                      ),
                      SingleProduct(
                        productImage: "jeans.png",
                        productName: "Men Jeans",
                        productPrice: 40.0,
                      ),
                      SingleProduct(
                        productImage: "headphones.png",
                        productName: "Gaming Headphones",
                        productPrice: 199.0,
                      ),
                      SingleProduct(
                        productImage: "cap.png",
                        productName: "DJ Cap",
                        productPrice: 15.0,
                      ),
                      SingleProduct(
                        productImage: "bag.png",
                        productName: "Women Side Bag",
                        productPrice: 30.0,
                      ),
                    ],
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
