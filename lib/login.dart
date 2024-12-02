import 'package:canteenautomation/Canteen/staffreg.dart';
import 'package:canteenautomation/Customer/reg.dart';
import 'package:canteenautomation/loginfunction.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  TextEditingController emaillcontroller = TextEditingController();
  TextEditingController passworddcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/images/french-breakfast.jpg'),
            fit: BoxFit.cover, // Changing from fill to cover for better scaling
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken), // Add overlay for better text visibility
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centering content
          crossAxisAlignment: CrossAxisAlignment.center, // Centering horizontally
          children: [
            const Text(
              "HEY WELCOME!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30, // Increase font size
                color: Colors.white, // White text for better visibility
                shadows: [
                  Shadow(
                    blurRadius: 10.0,
                    color: Colors.black,
                    offset: Offset(2.0, 2.0),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50, // Increased spacing for better design
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    controller: emaillcontroller,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: const TextStyle(color: Colors.white70),
                      filled: true,
                      fillColor: Colors.black.withOpacity(0.3),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: const Icon(Icons.email, color: Colors.white70),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passworddcontroller,
                    obscureText: true,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: const TextStyle(color: Colors.white70),
                      filled: true,
                      fillColor: Colors.black.withOpacity(0.3),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: const Icon(Icons.lock, color: Colors.white70),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Map<String, dynamic> data = {
                  'email': emaillcontroller.text,
                  'password': passworddcontroller.text,
                };
                login(emaillcontroller.text, passworddcontroller.text, context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
                padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                "LOGIN",
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CustomerRegistration(),
                        ));
                  },
                  child: const Text(
                    "Customer Registration",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StaffRegistration(),
                        ));
                  },
                  child: const Text(
                    "Staff Registration",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

List img = [
  "https://img.freepik.com/free-photo/white-cup-with-latte-coffee-cake_74190-7655.jpg?t=st=1723457440~exp=1723461040~hmac=06c6c39c61e05d7b75008f9cb47874ed24febec1d9a80378d18296b834d61686&w=900"
];