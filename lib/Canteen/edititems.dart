import 'dart:io';
import 'package:canteenautomation/Canteen/edititemfunction.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditfooditemsScreen extends StatelessWidget {
  final String name;
  final String price;
  final String description;
  final String canteenname;
  final String id;

  EditfooditemsScreen({
    super.key,
    required this.name,
    required this.price,
    required this.description,
    required this.canteenname,
    required this.id,
  });

  XFile? image;
  final ImagePicker _picker = ImagePicker();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController canteennameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    nameController.text = name;
    descriptionController.text = description;
    priceController.text = price;
    canteennameController.text = canteenname;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Update Fooditems',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/french-breakfast.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.7),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      image = await _picker.pickImage(source: ImageSource.gallery);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text("Pick Image"),
                  ),
                  const SizedBox(height: 40),

                  // Name Text Field
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: "Name",
                      labelStyle: const TextStyle(color: Colors.black),
                      
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    style: const TextStyle(color: Colors.black),
                  ),
                  const SizedBox(height: 30),

                  // Description Text Field
                  TextFormField(
                    controller: descriptionController,
                    decoration: InputDecoration(
                      labelText: "Description",
                      labelStyle: const TextStyle(color: Colors.black),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    style: const TextStyle(color: Colors.black),
                    maxLines: 3,
                  ),
                  const SizedBox(height: 30),

                  // Price Text Field
                  TextFormField(
                    controller: priceController,
                    decoration: InputDecoration(
                      labelText: "Price",
                      labelStyle: const TextStyle(color: Colors.black),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    style: const TextStyle(color: Colors.black),
                  ),
                  const SizedBox(height: 30),

                  // Canteen Name Text Field
                  TextFormField(
                    controller: canteennameController,
                    decoration: InputDecoration(
                      labelText: "Canteen Name",
                      labelStyle: const TextStyle(color: Colors.black),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    style: const TextStyle(color: Colors.black),
                  ),
                  const SizedBox(height: 40),

                  // Submit Button
                  Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        Map<String, dynamic> data = {
                          'name': nameController.text,
                          'price': priceController.text,
                          'description': descriptionController.text,
                          'canteenname': canteennameController.text,
                        };
                        if (image != null) {
                          final storageref = FirebaseStorage.instance
                              .ref()
                              .child('food_items_images')
                              .child('${image!.name}.jpg');
                          await storageref.putFile(File(image!.path));
                          final imageUrl = await storageref.getDownloadURL();
                          data['image'] = imageUrl;
                        }

                        await editfooditemfunction(data, id, context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: const Text("SUBMIT"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}