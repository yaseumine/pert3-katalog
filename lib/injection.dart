import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/cart/domain/repositories/cart_repository_impl.dart';
import 'features/cart/presentation/providers/cart_provider.dart';
import 'main.dart'; // Asumsi MyApp ada di main.dart, atau pindahkan MyApp ke sini jika perlu

Widget buildApp() {
  // 1. Buat Data Layer (Repository Impl)
  final cartRepository = CartRepositoryImpl();

  // 2. Sediakan Provider dengan Inject Repository
  return ChangeNotifierProvider(
    create: (context) => CartProvider(repository: cartRepository),
    child: const MyApp(),
  );
}
