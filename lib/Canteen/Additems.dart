import 'dart:io';

import 'package:canteenautomation/Canteen/additemfunction.dart';
import 'package:canteenautomation/Canteen/viewfooditems2.dart';
import 'package:canteenautomation/loginfunction.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AdditemsScreen extends StatelessWidget {
  AdditemsScreen({super.key});

  TextEditingController canteenname = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController price = TextEditingController();

  XFile? image;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/images/french-breakfast.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.6), // Darkens the background image
              BlendMode.darken,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () async {
                  image = await _picker.pickImage(source: ImageSource.gallery);
                },
                icon: const Icon(Icons.image),
                label: const Text("Pick Image"),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                  backgroundColor: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              _buildTextField(
                controller: name,
                label: "Name",
                icon: Icons.fastfood,
              ),
              const SizedBox(height: 20),
              _buildTextField(
                controller: description,
                label: "Description",
                icon: Icons.description,
              ),
              const SizedBox(height: 20),
              _buildTextField(
                controller: price,
                label: "Price",
                icon: Icons.attach_money,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              _buildTextField(
                controller: canteenname,
                label: "Canteen Name",
                icon: Icons.store,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () async {
                  if (image != null) {
                    final storageref = FirebaseStorage.instance
                        .ref()
                        .child('foodItemsImages')
                        .child('${image!.name}.jpg');
                    await storageref.putFile(File(image!.path));
                    final imageUrl = await storageref.getDownloadURL();

                    Map<String, dynamic> data = {
                      'staffid': staffid,
                      'name': name.text,
                      'price': price.text,
                      'description': description.text,
                      'canteenname': canteenname.text,
                      'image': imageUrl,
                    };
                    await additemfunction(data);
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 80),
                  backgroundColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  "SUBMIT",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const EdititemScreen()),
                  );
                },
                child: const Text(
                  "View added food items",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Common TextFormField with label and icon
  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white70),
        filled: true,
        fillColor: Colors.black.withOpacity(0.4),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Icon(icon, color: Colors.white70),
      ),
    );
  }
}