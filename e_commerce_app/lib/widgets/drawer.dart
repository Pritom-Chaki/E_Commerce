import 'package:flutter/material.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  bool homeColor = true;

  bool cartColor = false;

  bool aboutColor = false;

  bool contactColor = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: <Widget>[
      UserAccountsDrawerHeader(
        decoration: BoxDecoration(color: Color(0xfff8f8f8)),
        currentAccountPicture: CircleAvatar(
          backgroundImage: AssetImage("assets/images/profile1.png"),
        ),
        accountName: Text(
          "Pritom Chaki",
          style: TextStyle(color: Colors.black),
        ),
        accountEmail: Text(
          "abcd@chaki.com",
          style: TextStyle(color: Colors.black),
        ),
      ),
      ListTile(
        selected: homeColor,
        onTap: () {
          setState(() {
            homeColor = true;
            cartColor = false;
            aboutColor = false;
            contactColor = false;
          });
        },
        leading: Icon(Icons.home),
        title: Text("Home"),
      ),
      ListTile(
        selected: cartColor,
        onTap: () {
          setState(() {
            homeColor = false;
            cartColor = true;
            aboutColor = false;
            contactColor = false;
          });
        },
        leading: Icon(Icons.shopping_cart),
        title: Text("Cart"),
      ),
      ListTile(
        selected: aboutColor,
        onTap: () {
          setState(() {
            homeColor = false;
            cartColor = false;
            aboutColor = true;
            contactColor = false;
          });
        },
        leading: Icon(Icons.info),
        title: Text("About"),
      ),
      ListTile(
        selected: contactColor,
        onTap: () {
          setState(() {
            homeColor = false;
            cartColor = false;
            aboutColor = false;
            contactColor = true;
          });
        },
        leading: Icon(Icons.phone),
        title: Text("Contact Us"),
      ),
      ListTile(
        onTap: () {},
        leading: Icon(Icons.exit_to_app),
        title: Text("Logout"),
      ),
    ]));
  }
}
