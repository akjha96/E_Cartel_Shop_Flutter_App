import 'package:flutter/material.dart';

import '../models/product.dart';
import '../data/product_list.dart';
import '../widgets/product_item.dart';

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
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: loadedProducts.length,
        itemBuilder: (context, index) => ProductItem(
          id: loadedProducts[index].id,
          title: loadedProducts[index].title,
          imageUrl: loadedProducts[index].imageUrl,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
