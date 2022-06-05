import 'package:flutter/material.dart';

class CartItemList extends StatelessWidget {
  final String id;
  final String title;
  final int quantity;
  final double price;

  const CartItemList({
    Key? key,
    required this.id,
    required this.title,
    required this.quantity,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 4,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListTile(
          leading: CircleAvatar(
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: FittedBox(child: Text('\$$price')),
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
          title: Text(title),
          subtitle: Text('Total: \$${(price * quantity)}'),
          trailing: Text('$quantity x'),
        ),
      ),
    );
  }
}
