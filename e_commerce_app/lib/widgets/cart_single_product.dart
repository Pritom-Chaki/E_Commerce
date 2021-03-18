import 'package:e_commerce_app/widgets/variables.dart';
import 'package:flutter/material.dart';

class CartSingleProduct extends StatefulWidget {
  final double productPrice;
  final String productName;
  final String productImage;
  final int productQuentity;
  CartSingleProduct(
      {this.productImage,
      this.productName,
      this.productPrice,
      this.productQuentity});
  @override
  _CartSingleProductState createState() => _CartSingleProductState();
}

int count;

class _CartSingleProductState extends State<CartSingleProduct> {
  @override
  Widget build(BuildContext context) {
    count = widget.productQuentity;
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
                      image: NetworkImage(widget.productImage),
                    ),
                  ),
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
}
