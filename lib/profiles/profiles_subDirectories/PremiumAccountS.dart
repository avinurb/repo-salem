import 'package:flutter/material.dart';
import 'package:draft_ap/profiles/PaymentPageS.dart'; // Import صفحه پرداخت
import 'package:draft_ap/ColorPlate.dart';

class PremiumAccountS extends StatelessWidget {
  final Function(String) onAccountTypeChanged;

  PremiumAccountS({required this.onAccountTypeChanged});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Premium Accounts'),
        centerTitle: true,
        backgroundColor: persianGreen,
        elevation: 5,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [lightCyan, sandyBrown.withOpacity(0.3)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Choose a Premium Plan:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: persianGreen,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            _buildPremiumOption(
              context,
              title: '1 Month Premium',
              price: 50000,
              accountType: '1 Month Premium',
            ),
            _buildPremiumOption(
              context,
              title: '3 Month Premium',
              price: 120000,
              accountType: '3 Month Premium',
            ),
            _buildPremiumOption(
              context,
              title: '1 Year Premium',
              price: 500000,
              accountType: '1 Year Premium',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPremiumOption(
      BuildContext context, {
        required String title,
        required int price,
        required String accountType,
      }) {
    return Card(
      color: Colors.white,
      shadowColor: persianGreen.withOpacity(0.2),
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: persianGreen,
          child: Icon(
            Icons.star,
            color: Colors.white,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: charcoal,
          ),
        ),
        subtitle: Text(
          'Price: $price Toman',
          style: TextStyle(color: sandyBrown),
        ),
        trailing: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PaymentPage(
                  totalAmount: price,
                  onPaymentSuccess: () {
                    onAccountTypeChanged(accountType);
                    Navigator.pop(context);
                  },
                ),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: sandyBrown,
            foregroundColor: charcoal,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text('Select'),
        ),
      ),
    );
  }
}
