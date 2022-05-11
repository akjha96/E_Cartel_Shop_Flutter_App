import 'package:flutter/material.dart';

import 'product.dart';
import '../data/product_list.dart';

class ProductsProvider with ChangeNotifier {
  final List<Product> _items = ProductList.productList;

  List<Product> get items => [..._items];

  List<Product> get favouriteItems =>
      _items.where((productItem) => productItem.isFavorite).toList();

  void addProvider() {
    // _items.add(value);
    notifyListeners();
  }

  Product findProductById(String id) =>
      _items.firstWhere((product) => product.id == id);
}
