import 'package:flutter/material.dart';
import 'package:webprak/produt.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigasi Halaman',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Menampilkan gambar dari assets
          Container(
            color: Colors.purple[100],
            height: 200,
            width: double.infinity,
            child: Center(
              child: Image.asset(
                'assets/msi.jpeg', // Pastikan path ini benar
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Icons row
          Container(
            color: Colors.purple[200],
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Ikon dengan onPressed
                IconButton(
                  icon: const Icon(Icons.history, color: Colors.white),
                  onPressed: () {
                    // Aksi ketika ikon history ditekan
                    _showMessage(context, 'History clicked');
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.shopping_cart, color: Colors.white),
                  onPressed: () {
                    // Aksi ketika ikon shopping cart ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductList()), // Navigasi ke halaman ProductList
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.apartment, color: Colors.white),
                  onPressed: () {
                    // Aksi ketika ikon apartment ditekan
                    _showMessage(context, 'Apartment clicked');
                  },
                ),
              ],
            ),
          ),
          // List of names
          Expanded(
            child: ListView(
              children: const [
                ListTile(title: Text('Andi')),
                ListTile(title: Text('Budi')),
                ListTile(title: Text('Caca')),
                ListTile(title: Text('Dedi')),
                ListTile(title: Text('Eka')),
                ListTile(title: Text('Fani')),
                ListTile(title: Text('Gilang')),
                ListTile(title: Text('Hadi')),
                ListTile(title: Text('Ira')),
                ListTile(title: Text('Joko')),
                ListTile(title: Text('Kiki')),
                ListTile(title: Text('Lina')),
                ListTile(title: Text('Mira')),
              ],
            ),
          ),
        ],
      ),
    );
  }


  void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}

