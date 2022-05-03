import 'package:flutter/material.dart';

import '../models/product.dart';
import '../data/product_list.dart';
import '../widgets/products_grid.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = ProductList.productList;

  ProductOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'E Cartel Shop',
        ),
      ),
      body: const ProductsGrid(),
    );
  }
}
