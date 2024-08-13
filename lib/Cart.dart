// cart.dart
import 'Dart_model.dart';

class Cart {
  static List<Product> _cartItems = [];

  static List<Product> get cartItems => _cartItems;

  static void addToCart(Product product) {
    _cartItems.add(product);
  }

  static void removeFromCart(Product product) {
    _cartItems.remove(product);
  }

  static double get totalPrice {
    return _cartItems.fold(0, (sum, item) => sum + item.price);
  }
}
