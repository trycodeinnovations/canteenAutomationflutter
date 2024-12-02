// import 'package:canteenautomation/Usermodel/usermodel.dart';
// 
import 'package:canteenautomation/staffmodel/staffmodel.dart';
import 'package:flutter/material.dart';

class AdminViewstaffdetails extends StatelessWidget {
  final Staffmodel staff;

  const AdminViewstaffdetails({super.key, required this.staff});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Staff Details",
          style: TextStyle(
            color: Colors.deepOrange, // Changed to a food-related color
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 2,
        iconTheme: const IconThemeData(color: Colors.deepOrange), // Changed to match the theme
      ),
      body: Stack(
        children: [
          // Removed Background Image and replaced with solid color
          Container(
            height: double.infinity,
            width: double.infinity,
            color: const Color(0xFFF4E1D2), // Soft pastel color to represent food theme
          ),
          // Main Content
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Staff Name Display
                Text(
                  staff.name,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange[800], // Changed color to match theme
                  ),
                ),
                const SizedBox(height: 30),

                // Container for Name
                _buildDetailContainer(staff.name, Icons.person),
                const SizedBox(height: 15),

                // Container for Place
                _buildDetailContainer(staff.place, Icons.location_on),
                const SizedBox(height: 15),

                // Container for Post
                _buildDetailContainer(staff.post, Icons.work),
                const SizedBox(height: 15),

                // Container for District
                _buildDetailContainer(staff.district, Icons.map),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Method to build styled container with food theme
  Widget _buildDetailContainer(String text, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      height: 55,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 255, 245, 230), // Light warm color for food theme
            Colors.white,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.deepOrange.withOpacity(0.1), // Soft shadow with food-related color
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(2, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.deepOrange, // Matching icon color with the theme
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

