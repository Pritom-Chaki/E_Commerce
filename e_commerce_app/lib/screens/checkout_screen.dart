import 'package:e_commerce_app/widgets/variables.dart';
import 'package:flutter/material.dart';

class CheckOut extends StatefulWidget {
  final double productPrice;
  final String productName;
  final String productImage;
  CheckOut({this.productName, this.productImage, this.productPrice});
  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
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
                          image: NetworkImage(widget.productImage))),
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
                          "\$ ${widget.productPrice.toString()}",
                          style: priceTextStyle(),
                        ),
                        Container(
                          height: 35,
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Quntity ",
                                style: productTitleTextStyle(),
                              ),
                              Text(
                                "1",
                                style: productTitleTextStyle(),
                              )
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

  Widget _buildBottomDetail({String startName, String lastName}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          startName,
          style: productTitleTextStyle(),
        ),
        Text(
          " \$$lastName",
          style: productTitleTextStyle(),
        ),
      ],
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
          onPressed: () {},
          color: Colors.green[300],
          child: Text(
            "Buy",
            style: productHeadTextStyle(),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Check Out",
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
      body: Container(
        height: 700,
        //  color: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.yellow,
                  height: 150,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Check Out",
                        style: myStyle(20),
                      ),
                    ],
                  ),
                ),
                _buildProductCard(),
                _buildProductCard(),
                _buildProductCard(),
                _buildProductCard(),
                _buildProductCard(),
                _buildProductCard(),
                SizedBox(height: 10),
                _buildBottomDetail(
                    startName: "Product Price", lastName: "60.00"),
                _buildBottomDetail(startName: "VAT (5%)", lastName: "3.00"),
                _buildBottomDetail(startName: "Discount", lastName: "00.00"),
                _buildBottomDetail(
                    startName: "Delivery Charge", lastName: "15.00"),
                _buildBottomDetail(startName: "Total", lastName: "78.00"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
