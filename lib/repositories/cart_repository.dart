import 'package:southsea_cinema/models/basket.dart';


class CartRepository {
  CartRepository._internal();

  static final CartRepository instance = CartRepository._internal();

  //RETURN THE BASKET LIST
  final List<CartItem> _items = [];
  List<CartItem> getItems() {
    return List<CartItem>.unmodifiable(_items);
  }
  //ADD AND REMOVE ITEMS
  void addItem(CartItem item) {
    _items.add(item);
  }
  void removeItem(int index) {
    if (index >= 0 && index < _items.length) {
      _items.removeAt(index);
    }
  }
  //TOTAL ITEMS METHODS
  int getTotalItems() {
    int total = 0;
    for (final CartItem item in _items) {
      total += item.quantity;
    }
    return total;
  }
  int get totalItemCount {
    return getTotalItems();
  }
  //TICKET SUBTOTALS 
  double getSubtotal() {
    double sum = 0.0;
    for (final CartItem item in _items) {
      sum += item.LineTotal;
    }
    return sum;
  }
  //CLEAR BASKET METHOD
  void clear() {
    _items.clear();
  }
}