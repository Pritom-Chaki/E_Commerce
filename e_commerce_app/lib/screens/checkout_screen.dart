import 'package:e_commerce_app/provider/product_provider.dart';
import 'package:e_commerce_app/widgets/cart_single_product.dart';
import 'package:e_commerce_app/widgets/variables.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
  ProductProvider productProvider;
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
    productProvider = Provider.of<ProductProvider>(context);
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Check Out",
                      style: myStyle(20),
                    ),
                    ListView.builder(
                      itemCount: productProvider.getCardModelListLength,
                      itemBuilder: (ctx, index) {
                        CartSingleProduct(
                          productImage:
                              productProvider.getCardModelList[index].image,
                          productName:
                              productProvider.getCardModelList[index].name,
                          productPrice:
                              productProvider.getCardModelList[index].price,
                          productQuentity:
                              productProvider.getCardModelList[index].quantity,
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              _buildBottomDetail(startName: "Product Price", lastName: "60.00"),
              _buildBottomDetail(startName: "VAT (5%)", lastName: "3.00"),
              _buildBottomDetail(startName: "Discount", lastName: "00.00"),
              _buildBottomDetail(
                  startName: "Delivery Charge", lastName: "15.00"),
              _buildBottomDetail(startName: "Total", lastName: "78.00"),
            ],
          )

//

          ),
    );
  }
}
