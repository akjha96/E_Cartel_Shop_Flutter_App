import 'package:flutter/foundation.dart';

import 'orders_item.dart';
import 'cart_item.dart';

class OrdersProvider with ChangeNotifier {
  List<OrdersItem> _orders = [];

  List<OrdersItem> get orders {
    return [..._orders];
  }

  void addOrder(List<CartItem> cartProducts, double total) {
    _orders.insert(
      0,
      OrdersItem(
        id: DateTime.now().toString(),
        amount: total,
        products: cartProducts,
        dateTime: DateTime.now(),
      ),
    );
    notifyListeners();
  }

void clearCart() {
    _orders = [];
    notifyListeners();
  }
}
