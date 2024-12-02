// import 'dart:io';

// import 'package:canteenautomation/Usermodel/usermodel.dart';
import 'package:canteenautomation/Usermodel/usermodel.dart';
import 'package:flutter/material.dart';

class AdminViewuserdetails extends StatelessWidget {
  final Customermodel user;

  const AdminViewuserdetails({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Details"), // Added a title for clarity
        backgroundColor: Colors.white, // Set a consistent background color
      ),
      body: Stack(
        children: [
          // Replaced Background Image with a food-inspired color
          Container(
            height: double.infinity,
            width: double.infinity,
            color: const Color(0xFFF2E1C1), // Light food-related color (peach/yellowish)
          ),
          // Main content over the background
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch children to fill width
              children: [
                // Centered User Name
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 7),
                    Text(
                      user.name,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.deepOrange[800], // Food-inspired color for name
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // User Details in Styled Containers
                _buildDetailContainer("Name: ${user.name}"),
                const SizedBox(height: 20),
                _buildDetailContainer("Place: ${user.place}"),
                const SizedBox(height: 20),
                _buildDetailContainer("Post: ${user.post}"),
                const SizedBox(height: 20),
                _buildDetailContainer("District: ${user.district}"),
                const SizedBox(height: 20),
                _buildDetailContainer("Age: ${user.age}"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Method to build styled container
  Widget _buildDetailContainer(String text) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(12), // Rounded corners for a modern look
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 255, 230, 190), // Soft food-related yellow
            Colors.white, // Gradient for depth
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.info, // Example icon for user details
            color: Colors.deepOrange, // Matching food theme color for icon
          ),
          const SizedBox(width: 10), // Space between icon and text
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16, // Increased font size for better readability
                color: Colors.black87, // Darker color for contrast
              ),
            ),
          ),
        ],
      ),
    );
  }
}
