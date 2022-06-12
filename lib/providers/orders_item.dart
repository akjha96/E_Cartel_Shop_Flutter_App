import 'cart_item.dart';

class OrdersItem {
  final String id;
  final double amount;
  final List<CartItem> products;
  final DateTime dateTime;

  const OrdersItem({
    required this.id,
    required this.amount,
    required this.products,
    required this.dateTime,
  });
}
