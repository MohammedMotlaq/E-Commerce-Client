import 'package:e_commerce_client/data/firestore_helper.dart';
import 'package:flutter/material.dart';
import '../models/product_model.dart';

class FireStoreProvider extends ChangeNotifier {
  FireStoreProvider() {
    getAllProducts();
  }

  List<Product>? products;

  getAllProducts() async {
    products = await FireStoreHelper.fireStoreHelper.getAllProducts();
    notifyListeners();
  }
}