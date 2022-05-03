import 'package:flutter/material.dart';

import '../models/product.dart';
import '../data/product_list.dart';

class ProductsProvider with ChangeNotifier {
  List<Product> _items = ProductList.productList;
  List<Product> get items => [..._items];

  void addProvider() {
    // _items.add(value);
    notifyListeners();
  }

  Product findProductById(String id) =>
      _items.firstWhere((product) => product.id == id);
}
