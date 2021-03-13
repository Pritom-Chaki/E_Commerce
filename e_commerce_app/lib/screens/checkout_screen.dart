import 'package:e_commerce_app/widgets/variables.dart';
import 'package:flutter/material.dart';

class CheckOut extends StatefulWidget {
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
                          image: AssetImage("assets/images/cap.png"))),
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
                        Text("DJ Cap"),
                        Text("Cloths"),
                        Text(
                          "\$30.00",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        color: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
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
                    "CheckOut",
                  ),
                ],
              ),
            ),
            _buildProductCard(),
            _buildProductCard(),
          ],
        ),
      ),
    );
  }
}
