// lib/main.dart

import 'package:flutter/material.dart';
import 'pages/product_list_page.dart';

void main() {
  runApp(ProductExplorerApp());
}

class ProductExplorerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Explorer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductListPage(),
    );
  }
}
