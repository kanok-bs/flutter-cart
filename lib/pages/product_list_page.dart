// lib/pages/product_list_page.dart

import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_details_page.dart';

// List of dummy products
List<Product> products = [
  Product(
    id: 1,
    name: 'Product 1',
    price: 29.99,
    description: 'Description of Product 1',
    imageUrl: 'https://via.placeholder.com/150',
  ),
  Product(
    id: 2,
    name: 'Product 2',
    price: 49.99,
    description: 'Description of Product 2',
    imageUrl: 'https://via.placeholder.com/150',
  ),
  // Add more products here
];

class ProductListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsPage(product: product),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
