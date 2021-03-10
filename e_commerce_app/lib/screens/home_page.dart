import 'package:carousel_pro/carousel_pro.dart';
import 'package:e_commerce_app/screens/single_product.dart';
import 'package:e_commerce_app/widgets/variables.dart';
import 'package:flutter/material.dart';

import 'list_product.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Widget _buildCategories({String categoriesImage, int circleColor}) {
    return CircleAvatar(
      maxRadius: 37,
      backgroundColor: Color(circleColor),
      child: Container(
        height: 40,
        child: Image(
          // color: Colors.white,
          image: AssetImage("assets/images/$categoriesImage"),
        ),
      ),
    );
  }

  Widget _buildNewAndFeaProduct({String titleHeader}) {
    return Column(
      children: [
        Container(
          height: 70,
          // color: Colors.yellow,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                titleHeader,
                style: homeHeadTextStyle(),
              ),
              Text(
                "See All",
                style: homeHeadTextStyle(),
              ),
            ],
          ),
        ),
        Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SingleProduct(
                      productImage: "shoeman.png",
                      productName: "Men Shoe",
                      productPrice: 55.0,
                    ),
                    SingleProduct(
                      productImage: "shoewoman.png",
                      productName: "Women Shoe",
                      productPrice: 55.0,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(),
      appBar: AppBar(
        title: Text(
          "HomePage",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.grey[300],
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(Icons.notifications_none, color: Colors.black),
              onPressed: () {}),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            Column(
              children: <Widget>[
                Container(
                  height: 200,
                  //color: Colors.red,
                  child: Carousel(
                    //dotColor: Colors.white,

                    //dotBgColor: Colors.grey[100],
                    //   dotSpacing: 20.0,
                    // dotIncreaseSize: 4,
                    //dotIncreasedColor: Colors.blue,
                    // dotSize: 2,
                    showIndicator: false,
                    autoplay: true,

                    images: [
                      AssetImage("assets/images/ring.png"),
                      AssetImage("assets/images/headphones.png"),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  //color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                        width: double.infinity,
                        //color: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Featured",
                                  style: homeHeadTextStyle(),
                                ),
                                Text(
                                  "View More",
                                  style: homeHeadTextStyle(),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        // color: Colors.green,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildCategories(
                                  categoriesImage: "headphones.png",
                                  circleColor: 0xff33dcfd),
                              _buildCategories(
                                  categoriesImage: "ring.png",
                                  circleColor: 0xff338cdd),
                              _buildCategories(
                                  categoriesImage: "shoeman.png",
                                  circleColor: 0xff4ff2af),
                              _buildCategories(
                                  categoriesImage: "bag.png",
                                  circleColor: 0xff33dcfd),
                            ]),
                      ),
                    ],
                  ),
                ),

                //
                Container(
                  height: 70,
                  // color: Colors.yellow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "New Collection",
                        style: homeHeadTextStyle(),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                                  builder: (ctx) => ListProduct(
                                        productTitle: "New Collection",
                                      )));
                        },
                        child: Text(
                          "View More",
                          style: homeHeadTextStyle(),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SingleProduct(
                              productImage: "shoeman.png",
                              productName: "Men Shoe",
                              productPrice: 55.0,
                            ),
                            SingleProduct(
                              productImage: "shoewoman.png",
                              productName: "Women Shoe",
                              productPrice: 55.0,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                //
                Container(
                  height: 70,
                  // color: Colors.yellow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Featured",
                        style: homeHeadTextStyle(),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                                  builder: (ctx) => ListProduct(
                                        productTitle: "New Collection",
                                      )));
                        },
                        child: Text(
                          "View More",
                          style: homeHeadTextStyle(),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SingleProduct(
                              productImage: "ring.png",
                              productName: "Engajded Ring",
                              productPrice: 555.0,
                            ),
                            SingleProduct(
                              productImage: "bag.png",
                              productName: "Women Side Bag",
                              productPrice: 40.0,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                //
                Container(
                  height: 70,
                  // color: Colors.yellow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Your Style",
                        style: homeHeadTextStyle(),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                                  builder: (ctx) => ListProduct(
                                        productTitle: "Your Style",
                                      )));
                        },
                        child: Text(
                          "View More",
                          style: homeHeadTextStyle(),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SingleProduct(
                              productImage: "cap.png",
                              productName: "DJ Cap",
                              productPrice: 15.0,
                            ),
                            SingleProduct(
                              productImage: "jeans.png",
                              productName: "Man Jeans",
                              productPrice: 50.0,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
