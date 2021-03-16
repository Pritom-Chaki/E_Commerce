import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/model/product.dart';
import 'package:flutter/material.dart';

class CategoryProvider with ChangeNotifier {
  List<Product> shirt = [];
  List<Product> dress = [];
  List<Product> pant = [];
  List<Product> shoes = [];
  List<Product> tie = [];

  Product shirtData;
  Product dressData;
  Product pantData;
  Product shoesData;
  Product tieData;

  Future<void> getShirtData() async {
    List<Product> newList = [];

    QuerySnapshot shirtSnapShot = await Firestore.instance
        .collection("category")
        .document("XDWXgXGC3vZZpAdNumIq")
        .collection("shirt")
        .getDocuments();
    shirtSnapShot.documents.forEach(
      (element) {
        shirtData = Product(
            image: element.data["image"],
            name: element.data["name"],
            price: element.data["price"]);
        newList.add(shirtData);
      },
    );
    shirt = newList;
  }

  List<Product> get getShirtList {
    return shirt;
  }

  Future<void> getDressData() async {
    List<Product> newList = [];

    QuerySnapshot dressSnapShot = await Firestore.instance
        .collection("category")
        .document("XDWXgXGC3vZZpAdNumIq")
        .collection("dress")
        .getDocuments();
    dressSnapShot.documents.forEach(
      (element) {
        dressData = Product(
            image: element.data["image"],
            name: element.data["name"],
            price: element.data["price"]);
        newList.add(dressData);
      },
    );
    dress = newList;
  }

  List<Product> get getDressList {
    return dress;
  }

  Future<void> getShoesData() async {
    List<Product> newList = [];

    QuerySnapshot shoeSnapShot = await Firestore.instance
        .collection("category")
        .document("XDWXgXGC3vZZpAdNumIq")
        .collection("shoe")
        .getDocuments();
    shoeSnapShot.documents.forEach(
      (element) {
        shoesData = Product(
            image: element.data["image"],
            name: element.data["name"],
            price: element.data["price"]);
        newList.add(shoesData);
      },
    );
    shoes = newList;
  }

  List<Product> get getShoesList {
    return shoes;
  }

  Future<void> getPantData() async {
    List<Product> newList = [];

    QuerySnapshot pantSnapShot = await Firestore.instance
        .collection("category")
        .document("XDWXgXGC3vZZpAdNumIq")
        .collection("pant")
        .getDocuments();
    pantSnapShot.documents.forEach(
      (element) {
        pantData = Product(
            image: element.data["image"],
            name: element.data["name"],
            price: element.data["price"]);
        newList.add(pantData);
      },
    );
    pant = newList;
  }

  List<Product> get getPantList {
    return pant;
  }

  Future<void> getTieData() async {
    List<Product> newList = [];

    QuerySnapshot tieSnapShot = await Firestore.instance
        .collection("category")
        .document("XDWXgXGC3vZZpAdNumIq")
        .collection("tie")
        .getDocuments();
    tieSnapShot.documents.forEach(
      (element) {
        tieData = Product(
            image: element.data["image"],
            name: element.data["name"],
            price: element.data["price"]);
        newList.add(tieData);
      },
    );
    tie = newList;
  }

  List<Product> get getTieList {
    return tie;
  }
}
