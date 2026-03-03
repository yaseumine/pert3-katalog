import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // [cite: 138]
  final List<String> _items = [];

  List<String> get items => _items;

  void add(String itemName) {
    _items.add(itemName);
    notifyListeners();
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }
}
