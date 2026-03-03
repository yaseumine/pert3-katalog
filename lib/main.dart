// main.dart
import 'package:flutter/material.dart';

import 'core/routes/app_router.dart';
import 'injection.dart'; // Import file DI

void main() => runApp(buildApp());

// Class MyApp harus diperbarui untuk menggunakan AppRouter
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouter.catalog, // Menggunakan konstanta dari AppRouter
      routes: AppRouter.routes, // Menggunakan map routes dari AppRouter
    );
  }
}
