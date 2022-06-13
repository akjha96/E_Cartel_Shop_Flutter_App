import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../providers/orders_item.dart';

class OrderItemList extends StatelessWidget {
  final OrdersItem order;

  const OrderItemList({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            ListTile(
              title: Text('\$${order.amount}'),
              subtitle: Text(
                DateFormat('dd/MM/yyyy hh:mm:ss').format(order.dateTime),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {}
                // order.cancelOrder();
                ,
              ),
            )
          ],
        ));
  }
}
