// 
import 'package:canteenautomation/Canteen/orderplacedfun.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({
    super.key,
    this.price,
    this.name,
    this.description,
    this.image,
    this.canteenname,
    this.userid,
  });

  final price;
  final name;
  final description;
  final image;
  final userid;
  final canteenname;

  ValueNotifier<String?> selectedpaymemnt = ValueNotifier(null);

  final List<String> _paymentMethods = ['UPI', 'Credit Card', 'Debit Card'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Payment",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        backgroundColor: Colors.orange, // Warm food-themed color
        elevation: 5,
      ),
      body: Container(
        color: Colors.orange[50], // Light orange background for a subtle theme
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "BILL SUMMARY",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 46,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.orange),
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  "₹ $price",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Select Payment Method",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.brown,
              ),
            ),
            const SizedBox(height: 10),
            ValueListenableBuilder(
              valueListenable: selectedpaymemnt,
              builder: (context, value, child) => Column(
                children: _paymentMethods.map((method) {
                  return RadioListTile<String>(
                    title: Text(
                      method,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    value: method,
                    groupValue: selectedpaymemnt.value,
                    onChanged: (String? value) {
                      selectedpaymemnt.value = value;
                    },
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Map<String, dynamic> data = {
                    'price': price,
                    'name': name,
                    'description': description,
                    'image': image,
                    'userid': FirebaseAuth.instance.currentUser!.email,
                    'canteenid': canteenname,
                  };
                  placedordersfun(data);
                },
                icon: const Icon(Icons.fastfood, color: Colors.white),
                label: const Text(
                  "PLACE ORDER",
                  style: TextStyle(fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.orange, // Food theme button
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
