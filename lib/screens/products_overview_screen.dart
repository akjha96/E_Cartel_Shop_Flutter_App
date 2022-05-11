import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/product.dart';
import '../providers/products_provider.dart';
import '../data/product_list.dart';
import '../widgets/products_grid.dart';
import '../enums/filter_options_enum.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = ProductList.productList;

  ProductOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productContainer =
        Provider.of<ProductsProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'E Cartel Shop',
        ),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              print('Selected Value $selectedValue');
              if (selectedValue == FilterOptions.favourites) {
                productContainer.showFavoritesOnly();
              } else {
                productContainer.showAll();
              }
            },
            icon: const Icon(Icons.more_vert),
            itemBuilder: (_) => [
              const PopupMenuItem(
                  child: Text('Only Favorites'),
                  value: FilterOptions.favourites),
              const PopupMenuItem(
                  child: Text('Show All'), value: FilterOptions.all),
            ],
          ),
        ],
      ),
      body: const ProductsGrid(),
    );
  }
}
