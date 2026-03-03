import 'cart_repository.dart';
import '../entities/product.dart';

class CartRepositoryImpl implements CartRepository {
  final List<Product> _items = []; // List internal untuk menyimpan data

  @override
  List<Product> getCartItems() => List.unmodifiable(_items); // Memberikan list read-only

  @override
  void addItem(Product product) => _items.add(product);

  @override
  void removeAllItems() => _items.clear();

  @override
  bool isItemInCart(String productId) => _items.any((p) => p.id == productId);
}
