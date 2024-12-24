import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // لیست استاتیک محصولات
  final List<Map<String, dynamic>> products = [
    {
      'name': 'قاب گوشی',
      'imagePath': 'assets/images/case.png',
      'price': 50000,
      'rating': 4.5,
      'sales': 20,
      'isDiscounted': true,
      'discountedPrice': 40000,
    },
    {
      'name': 'هندزفری',
      'imagePath': 'assets/images/headphone.png',
      'price': 250000,
      'rating': 4.8,
      'sales': 15,
      'isDiscounted': false,
    },
    {
      'name': 'گلدان دکوری',
      'imagePath': 'assets/images/vase.png',
      'price': 150000,
      'rating': 4.3,
      'sales': 10,
      'isDiscounted': true,
      'discountedPrice': 120000,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('فروشگاه آنلاین'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // لیست محصولات
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'محصولات فروشگاه',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        product['imagePath'],
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product['name'],
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text('قیمت: ${product['price']} تومان'),
                              if (product['isDiscounted'] == true)
                                Text(
                                  'تخفیف: ${product['discountedPrice']} تومان',
                                  style: TextStyle(color: Colors.red),
                                ),
                              Text('امتیاز: ${product['rating']}'),
                              Text('فروش: ${product['sales']} عدد'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
