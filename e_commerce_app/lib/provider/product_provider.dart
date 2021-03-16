import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/model/product.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  List<Product> feature = [];
  Product featureData;
  List<Product> newAcheives = [];
  Product newAcheivesData;

  Future<void> getFeatureData() async {
    List<Product> newList = [];

    QuerySnapshot featureSnapShot = await Firestore.instance
        .collection("product")
        .document("Sfe9DxXILSU4NYAEl4Vj")
        .collection("featureproduct")
        .getDocuments();

    featureSnapShot.documents.forEach(
      (element) {
        featureData = Product(
            image: element.data["image"],
            name: element.data["name"],
            price: element.data["price"]);
        newList.add(featureData);
      },
    );
    feature = newList;
  }

  List<Product> get getFeatureList {
    return feature;
  }

  Future<void> gnewAcheivesData() async {
    List<Product> newList = [];

    QuerySnapshot newAcheivesSnapShot = await Firestore.instance
        .collection("product")
        .document("Sfe9DxXILSU4NYAEl4Vj")
        .collection("newacheive")
        .getDocuments();
    newAcheivesSnapShot.documents.forEach(
      (element) {
        newAcheivesData = Product(
            image: element.data["image"],
            name: element.data["name"],
            price: element.data["price"]);
        newList.add(newAcheivesData);
      },
    );
    newAcheives = newList;
  }

  List<Product> get getNewAcheivesList {
    return newAcheives;
  }
}
