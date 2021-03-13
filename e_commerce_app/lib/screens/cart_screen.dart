import 'package:e_commerce_app/screens/checkout_screen.dart';
import 'package:e_commerce_app/widgets/variables.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class CartScreen extends StatefulWidget {
  final double productPrice;
  final String productName;
  final String productImage;
  CartScreen({this.productName, this.productImage, this.productPrice});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int count = 1;

  Widget _buildProductCard() {
    return Container(
      height: 140,
      width: double.infinity,
      //color: Colors.red,
      child: Card(
        //   color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              "assets/images/${widget.productImage}"))),
                ),
                Container(
                  height: 130,
                  width: 200,
                  //color: Colors.yellow,
                  child: ListTile(
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.productName),
                        Text("Cloths"),
                        Text(
                          "\$${widget.productPrice.toString()}",
                          style: priceTextStyle(),
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          color: Color(0xfff2f2f2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                child: Icon(Icons.remove),
                                onTap: () {
                                  setState(() {
                                    if (count > 1) {
                                      count--;
                                    }
                                  });
                                },
                              ),
                              Text(
                                count.toString(),
                                style: productHeadTextStyle(),
                              ),
                              GestureDetector(
                                child: Icon(Icons.add),
                                onTap: () {
                                  setState(() {
                                    count++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.only(bottom: 10),
          height: 60,
          //  width: 100,
          // color: Colors.red,
          child: RaisedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (ctx) => CheckOut(
                        productImage: widget.productImage,
                        productName: widget.productName,
                        productPrice: widget.productPrice,
                      )));
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
        body: ListView(
          children: [
            _buildProductCard(),
            _buildProductCard(),
            _buildProductCard(),
            _buildProductCard(),
            _buildProductCard(),
            _buildProductCard(),
            _buildProductCard(),
            _buildProductCard(),
            _buildProductCard(),
            _buildProductCard(),
            _buildProductCard(),
            _buildProductCard(),
          ],
        ));
  }
}
