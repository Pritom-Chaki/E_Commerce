import 'package:e_commerce_app/widgets/variables.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Widget _buildFeatureProduct(
      String productName, double productPrice, String productImage) {
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
              "\$ $productPrice",
              style: priceTextStyle(),
            ),
            Text(
              "$productName",
              style: productTitleTextStyle(),
            )
          ],
        ),
      ),
    );
  }

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

  Widget _buildNewAndFeaProduct() {
    return Column(
      children: [
        Container(
          height: 70,
          // color: Colors.yellow,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "New Arrives",
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
                    _buildFeatureProduct("Men Shoe", 55.0, "shoeman.png"),
                    _buildFeatureProduct("Women Shoe", 50.0, "shoewoman.png"),
                    //   _buildFeatureProduct("Women Ring", 100.0, "ring.png"),
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
              icon: Icon(Icons.notifications_none, color: Colors.black),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.send,
                color: Colors.black,
              ),
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
                  height: 120,
                  width: double.infinity,
                  //color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search Something",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Featured",
                                  style: homeHeadTextStyle(),
                                ),
                                Text(
                                  "See All",
                                  style: homeHeadTextStyle(),
                                )
                              ],
                            ),
                          ],
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
                            _buildFeatureProduct("DJ Cap", 15.0, "cap.png"),
                            _buildFeatureProduct(
                                "Man Jeans", 40.0, "jeans.png"),
                            //   _buildFeatureProduct("Women Ring", 100.0, "ring.png"),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 70,
                  //color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Categories",
                        style: homeHeadTextStyle(),
                      ),
                      Text(
                        "See All",
                        style: homeHeadTextStyle(),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  //color: Colors.blue,
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
                _buildNewAndFeaProduct(),
                Container(
                  height: 70,
                  //color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Featured",
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
                            _buildFeatureProduct("Ladies Bag", 30.0, "bag.png"),
                            _buildFeatureProduct(
                                "Engajment Ring", 150.0, "ring.png"),
                            //   _buildFeatureProduct("Women Ring", 100.0, "ring.png"),
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
