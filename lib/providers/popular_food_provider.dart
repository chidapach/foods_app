import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:foods_app/models/product_model.dart';
import 'package:foods_app/services/firebase_service.dart';

class PopularfoodProvider with ChangeNotifier {
  late ProductModel productModel;

  productModels(QueryDocumentSnapshot element) {
    productModel = ProductModel(
        productImage: element.get("productImage"),
        productName: element.get("productName"),
        productPrice: element.get("productPrice"));
  }

  ///////////PopularProduct///////////////////////
  List<ProductModel> popularProductList = [];

  fatchPopularProductData() async {
    List<ProductModel> newList = [];
    QuerySnapshot value = await FirebaseService()
        .firebaseFirestore
        .collection("PopularProduct")
        .get();
    // await FirebaseFirestore.instance.collection("PopularProduct").get();

    value.docs.forEach((element) {
      productModels(element);
      newList.add(productModel);
    });
    popularProductList = newList;
    notifyListeners();
  }

  List<ProductModel> get getPopularProductDataList {
    return popularProductList;
  }
}
