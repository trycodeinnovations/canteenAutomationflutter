// import 'package:canteenautomation/Canteen/orderplacedget.dart';
// import 'package:canteenautomation/Canteen/orderplacedget.dart';
import 'package:canteenautomation/Canteen/orderplacedget.dart';
import 'package:flutter/material.dart';



class totalEarnings extends StatelessWidget {
  const totalEarnings({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Order Forcasting'),
        ),
        body: const TotalEarningsWidget(
          earnings: [200.50, 150.25, 300.00, 400.75],
        ),
      ),
    );
  }
}

class TotalEarningsWidget extends StatelessWidget {
  final List<double> earnings;

  // Constructor to pass earnings list
  const TotalEarningsWidget({super.key, required this.earnings});

  // Method to calculate total earnings
  double calculateTotalEarnings() {
    return earnings.reduce((value, element) => value + element);
  }

  @override
  Widget build(BuildContext context) {
    // Calculate the total earnings
    double totalEarnings = calculateTotalEarnings();

    return Center(
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            // Text("canteenname"),
          Text(
            'Total Earnings:$canteenTotalAmount',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          // Text(
          //   '\$${totalEarnings.toStringAsFixed(2)}',
          //   style: TextStyle(fontSize: 32, color: Colors.green, fontWeight: FontWeight.bold),
          // ),
        ],
      ),
    );
  }
}