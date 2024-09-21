import 'package:flutter/material.dart';

class Care extends StatefulWidget {
  const Care({super.key});

  @override
  State<Care> createState() => _CareState();
}

class _CareState extends State<Care> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Care"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),

          // Tabs
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildTab("Baby & Kids", true),
                _buildTab("Body", false),
                _buildTab("Teeth & Mouth", false),
                _buildTab("Face", false),
                _buildTab("Hair", false),
              ],
            ),
          ),

          // Product Grid
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.75,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return _buildProductCard(products[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTab(String label, bool isActive) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Chip(
        backgroundColor: isActive ? Colors.blue : Colors.grey[200],
        label: Text(
          label,
          style: TextStyle(
            color: isActive ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildProductCard(Product product) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  product.imagePath,
                  height: 80,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  right: 0,
                  child: IconButton(
                    icon: Icon(product.isFavorite ? Icons.favorite : Icons.favorite_border),
                    color: product.isFavorite ? Colors.red : Colors.grey,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(product.name, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(product.size, style: TextStyle(color: Colors.grey)),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$${product.price}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.add_shopping_cart),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(8),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Dummy product data
class Product {
  final String name;
  final String size;
  final double price;
  final String imagePath;
  final bool isFavorite;

  Product({
    required this.name,
    required this.size,
    required this.price,
    required this.imagePath,
    required this.isFavorite,
  });
}

// List of dummy products
List<Product> products = [
  Product(
    name: 'Baby Diapers',
    size: 'Size - 2 (4-8 kg), 68 pcs',
    price: 25,
    imagePath: 'assets/images/diaper.png',
    isFavorite: true,
  ),
  Product(
    name: 'Wet Wipes',
    size: '56 pcs',
    price: 12,
    imagePath: 'assets/images/wet_wipes.png',
    isFavorite: false,
  ),
  Product(
    name: 'Gentle Shampoo',
    size: '500 ml',
    price: 28,
    imagePath: 'assets/images/shampoo.png',
    isFavorite: true,
  ),
  Product(
    name: 'Body Wash & Shampoo',
    size: '200 ml',
    price: 23,
    imagePath: 'assets/images/body_wash.png',
    isFavorite: false,
  ),
];
