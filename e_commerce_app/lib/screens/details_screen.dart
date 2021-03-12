import 'package:e_commerce_app/screens/home_page.dart';
import 'package:e_commerce_app/widgets/variables.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String productImage;
  final String productName;
  final double productPrice;
  DetailScreen({this.productImage, this.productName, this.productPrice});
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int count = 1;
  Widget _buildProductSize({String sizeTitle}) {
    return Container(
        height: 60,
        width: 60,
        color: Colors.white,
        child: Center(
          child: Text(
            sizeTitle,
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ));
  }

  Widget _buildProductColor({Color productColor}) {
    return Container(
      height: 60,
      width: 60,
      color: productColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details Page",
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
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (ctx) => HomePage(),
                ),
              );
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
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Container(
                    width: 350,
                    //color: Colors.blue,
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(13),
                        child: Container(
                          height: 220,
                          decoration: BoxDecoration(
                            // color: Colors.red,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  "assets/images/${widget.productImage}"),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        //color: Colors.red,
                        height: 100,
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.productName,
                                  style: productHeadTextStyle(),
                                ),
                                Text(
                                  "\$ ${widget.productPrice.toString()}",
                                  style: productHeadTextStyle(),
                                ),
                                Text(
                                  "Description",
                                  style: productHeadTextStyle(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 200,
                        // color: Colors.blue,
                        child: Wrap(
                          children: [
                            Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        "Size",
                        style: productHeadTextStyle(),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 250,
                        color: Colors.grey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildProductSize(sizeTitle: "S"),
                            _buildProductSize(sizeTitle: "M"),
                            _buildProductSize(sizeTitle: "L"),
                            _buildProductSize(sizeTitle: "XL"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Color",
                        style: productHeadTextStyle(),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 250,
                        //color: Colors.grey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildProductColor(productColor: Colors.green[200]),
                            _buildProductColor(productColor: Colors.blue[200]),
                            _buildProductColor(productColor: Colors.red[200]),
                            _buildProductColor(
                                productColor: Colors.yellow[200]),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Quantity",
                        style: productHeadTextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(20),
                        ),
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
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 60,
                        width: double.infinity,
                        // color: Colors.black,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          color: Colors.pinkAccent,
                          onPressed: () {},
                          child: Text(
                            "Check Out",
                            style: productHeadTextStyle(),
                          ),
                        ),
                      )
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
