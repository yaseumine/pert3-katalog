// features/cart/presentation/pages/catalog_page.dart
// (Tambahkan semua import yang diperlukan)
import 'package:flutter/material.dart';

import '../../../../../core/routes/app_route.dart';

import '../../domain/entities/product.dart';
import '../widgets/add_button_widget.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  // Menggunakan Product Entity
  static final List<Product> products = [
    Product(id: '1', name: 'Nasi Goreng', price: 15000),
    Product(id: '2', name: 'Sate Ayam', price: 20000),
    Product(id: '3', name: 'Es Teh', price: 5000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Katalog Makanan'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: (() => Navigator.pushNamed(context, AppRouter.cart)),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(products[index].name),
          subtitle: Text('Rp ${products[index].price}'),
          // Menggunakan AddButtonWidget baru dan Product entity
          trailing: AddButtonWidget(product: products[index]),
        ),
      ),
    );
  }
}
