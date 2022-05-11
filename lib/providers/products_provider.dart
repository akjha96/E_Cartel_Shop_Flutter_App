import 'package:flutter/material.dart';

import 'product.dart';
import '../data/product_list.dart';

class ProductsProvider with ChangeNotifier {
  final List<Product> _items = ProductList.productList;

  bool _showFavoritesOnly = false;

  List<Product> get items {
    if (_showFavoritesOnly) {
      return _items.where((productItem) => productItem.isFavorite).toList();
    } else {
      return [..._items];
    }
  }

  void addProvider() {
    // _items.add(value);
    notifyListeners();
  }

  Product findProductById(String id) =>
      _items.firstWhere((product) => product.id == id);

  void showFavoritesOnly() {
    _showFavoritesOnly = true;
    notifyListeners();
  }

  void showAll() {
    _showFavoritesOnly = false;
    notifyListeners();
  }
}
