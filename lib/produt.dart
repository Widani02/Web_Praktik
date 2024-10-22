import 'package:flutter/material.dart';
import 'package:webprak/new/fun_collection.dart';



class ProductList extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Product 1',
      'price': 'Rp 100.000',
      'sold': '50 Terjual',
      'image': 'assets/L1.jpeg',
    },
    {
      'name': 'Product 2',
      'price': 'Rp 150.000',
      'sold': '30 Terjual',
      'image': 'assets/L2.jpeg',
    },
  ];

  ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: GridBuilderTwo(items: products), // Menggunakan GridBuilderTwo dari file sebelumnya
    );
  }
}
