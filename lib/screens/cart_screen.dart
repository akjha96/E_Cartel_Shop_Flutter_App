import 'package:e_cartel_shop/providers/orders_provider.dart';
import 'package:e_cartel_shop/screens/orders_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cart_provider.dart';
import '../widgets/cart_item_list.dart';
import '../providers/orders_provider.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your Cart'),
        ),
        body: Column(
          children: [
            Card(
              margin: EdgeInsets.all(15),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Total',
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: Chip(
                        label: Text('\$${cart.totalAmount}',
                            style: TextStyle(
                                color: Theme.of(context)
                                    .primaryTextTheme
                                    .titleMedium
                                    ?.color)),
                        backgroundColor: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Provider.of<OrdersProvider>(context, listen: false)
                            .addOrder(
                                cart.items.values.toList(), cart.totalAmount);
                        cart.clear();
                        Navigator.of(context).pushNamed(OrdersScreen.routeName);
                      },
                      child: const Text('ORDER NOW'),
                      style: TextButton.styleFrom(
                          primary: Theme.of(context).colorScheme.primary),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: ((context, index) => CartItemList(
                      id: cart.items.values.toList()[index].id,
                      productId: cart.items.keys.toList()[index],
                      title: cart.items.values.toList()[index].title,
                      quantity: cart.items.values.toList()[index].quantity,
                      price: cart.items.values.toList()[index].price,
                    )),
                itemCount: cart.itemCount,
              ),
            )
          ],
        ));
  }
}
