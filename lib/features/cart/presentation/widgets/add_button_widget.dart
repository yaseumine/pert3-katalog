// features/cart/presentation/widgets/add_button_widget.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../domain/entities/product.dart';
import '../providers/cart_provider.dart';

class AddButtonWidget extends StatelessWidget {
  final Product product;
  const AddButtonWidget({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    // context.select kini memantau CartProvider dan memeriksa ID produk
    final isInCart = context.select<CartProvider, bool>(
      (provider) => provider.isInCart(product.id),
    );

    return TextButton(
      onPressed: isInCart
          ? null
          // context.read memanggil addItem di CartProvider dengan Product entity
          : () => context.read<CartProvider>().addItem(product),
      child: isInCart
          ? const Icon(Icons.check, color: Colors.green)
          : const Text('TAMBAH'),
    );
  }
}
