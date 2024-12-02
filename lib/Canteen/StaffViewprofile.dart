// import 'package:canteenautomation/Canteen/staffviewprofileget.dart';
// import 'package:canteenautomation/Canteen/staffviewprofileget.dart';
import 'package:canteenautomation/Canteen/staffviewprofileget.dart';
import 'package:canteenautomation/login.dart';
import 'package:flutter/material.dart';

class StaffViewProfile extends StatelessWidget {
  const StaffViewProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            icon: const Icon(Icons.person),
          ),
        ],
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.orangeAccent.shade700, // Food theme color
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: IconThemeData(color: Colors.orangeAccent.shade700), // Icon color matching theme
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Name at the top
              Center(
                child: Column(
                  children: [
                    // Name text with food-related color
                    Text(
                      staffprofilelist.first.name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange.shade800, // Food-inspired color
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/profile_placeholder.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Profile Details with updated colors and box shadows
              _buildProfileDetail(
                label: 'Name',
                value: staffprofilelist.first.name,
                backgroundColor: Colors.orange.shade50, // Light orange for the food theme
              ),
              _buildProfileDetail(
                label: 'Place',
                value: staffprofilelist.first.place,
                backgroundColor: Colors.yellow.shade50, // Light yellow for freshness
              ),
              _buildProfileDetail(
                label: 'District',
                value: staffprofilelist.first.district,
                backgroundColor: Colors.green.shade50, // Light green, nature-inspired
              ),
              _buildProfileDetail(
                label: 'Post',
                value: staffprofilelist.first.post,
                backgroundColor: Colors.brown.shade50, // Earthy tone for food
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget to build individual profile detail sections with food-themed styling
  Widget _buildProfileDetail({required String label, required String value, required Color backgroundColor}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: backgroundColor.withOpacity(0.5)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black54,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
