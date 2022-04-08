import 'package:app_mysql/src/ui/products/products_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Mysql Api Riverpod',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProductView(),
    );
  }
}
