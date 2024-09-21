import 'package:dashboard/menu/footer.dart';
import 'package:dashboard/screen/submanu/care.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Search bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),

            // Banner section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    //image: AssetImage('assets/images/banner.jpg'),
                    image: NetworkImage(
                        'data:image/jpeg;base64,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'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Mega Sale\nSpecial Offer",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ),
            ),

            // Categories section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to Care form when tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Care()),
                      );
                    },
                    child: _buildCategoryIcon(Icons.favorite, "Care"),
                  ),
                  _buildCategoryIcon(Icons.favorite_border, "Heart"),
                  _buildCategoryIcon(Icons.memory, "Brain"),
                  _buildCategoryIcon(Icons.local_hospital, "Stomach"),
                  _buildCategoryIcon(Icons.air, "Lung"),
                ],
              ),
            ),

            SizedBox(height: 16.0),

            // Popular Products section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  TextButton(onPressed: () {}, child: Text("SHOW ALL")),
                ],
              ),
            ),
            _buildProductList(),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryIcon(IconData iconData, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.blue[100],
          child: Icon(iconData, color: Colors.blue),
        ),
        SizedBox(height: 15),
        Text(label),
      ],
    );
  }

  Widget _buildProductList() {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.75,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        _buildProductCard('Baby Diapers', 30, 'assets/images/diaper.png'),
        _buildProductCard('Wet Wipes', 12, 'assets/images/wet_wipes.png'),
        _buildProductCard('Gentle Shampoo', 28, 'assets/images/shampoo.png'),
        _buildProductCard('Body Wash', 23, 'assets/images/body_wash.png'),
      ],
    );
  }

  Widget _buildProductCard(String productName, double price, String imagePath) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              height: 100, // Adjust the height here
              width: double
                  .infinity, // Adjust the width here, or set a fixed width
              fit: BoxFit
                  .cover, // Adjust how the image should fit (e.g., cover, contain, etc.)
            ),
            SizedBox(height: 8),
            Text(productName),
            Spacer(),
            Text(
              "\$$price",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 8),
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
      ),
    );
  }
}
