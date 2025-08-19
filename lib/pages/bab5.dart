// File: lib/pages/login_page.dart
// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:my_biodata_app/main.dart';

void main() {
  runApp(Bab5());
}

class Product {
  final String name;
  final double price;
  final String description;
  final String imageUrl;

  Product({
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl,
  });
}

class Bab5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Catalog',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => ProductListScreen(),
        '/detail': (context) {
          final product = ModalRoute.of(context)!.settings.arguments as Product;
          return ProductDetailScreen(product: product);
        },
      },
    );
  }
}

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Laptop',
      price: 15000000,
      description: 'Laptop gaming dengan spesifikasi tinggi.',
      imageUrl: 'https://tse2.mm.bing.net/th/id/OIP.84QjPYVB4LG4O4FmNX_PHAHaHa?w=864&h=864&rs=1&pid=ImgDetMain&o=7&rm=3',
    ),
    Product(
      name: 'Smartphone',
      price: 7000000,
      description: 'Smartphone flagship dengan kamera canggih.',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSG1h7YVKMgu1b4MEaFnJspowE-xpyWEL008Jq6BloPsBykSnAbPWBrxY5aWJLxmGFuOM&usqp=CAU',
    ),
    Product(
      name: 'Headphone',
      price: 1200000,
      description: 'Headphone dengan kualitas suara premium.',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsBK9BasRd9yGC89qnpriNP4O8VUJhN17M1W-QXClD1dLM60DsMZLVMKPie6JiGO4sqsA&usqp=CAU',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daftar Produk')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            leading: Image.network(product.imageUrl),
            title: Text(product.name),
            subtitle: Text('Rp ${product.price.toStringAsFixed(0)}'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/detail',
                arguments: product,
              );
            },
          );
        },
      ),
    );
  }
}

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(product.imageUrl),
            SizedBox(height: 16),
            Text(
              'Harga: Rp ${product.price.toStringAsFixed(0)}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(product.description),
            Spacer(),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Kembali ke Daftar'),
            ),
          ],
        ),
      ),
    );
  }
}
