import 'package:canteenautomation/Customer/customer%20regfunction.dart';
import 'package:canteenautomation/login.dart';
import 'package:flutter/material.dart';

class CustomerRegistration extends StatelessWidget {
  CustomerRegistration({super.key});
  TextEditingController name = TextEditingController();
  TextEditingController place = TextEditingController();
  TextEditingController district = TextEditingController();
  TextEditingController post = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  bool obscureText = true;
  @override
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Registration",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
          ),
        ),
        backgroundColor: Colors.white, // Improved AppBar color
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: formkey,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: const AssetImage('assets/images/canteen.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.darken), // Background overlay for clarity
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  const SizedBox(height: 20),
                  _buildTextField(
                    controller: name,
                    label: "Name",
                    icon: Icons.person,
                  ),
                  const SizedBox(height: 10),
                  _buildTextField(
                    controller: age,
                    label: "Age",
                    icon: Icons.cake,
                  ),
                  const SizedBox(height: 10),
                  _buildTextField(
                    controller: place,
                    label: "Place",
                    icon: Icons.location_city,
                  ),
                  const SizedBox(height: 10),
                  _buildTextField(
                    controller: district,
                    label: "District",
                    icon: Icons.map,
                  ),
                  const SizedBox(height: 10),
                  _buildTextField(
                    controller: post,
                    label: "Post",
                    icon: Icons.local_post_office,
                  ),
                  const SizedBox(height: 10),
                  _buildTextField(
                    controller: email,
                    label: "Email",
                    icon: Icons.email,
                  ),
                  const SizedBox(height: 10),
                  _buildTextField(
                    controller: password,
                    label: "Password",
                    icon: Icons.lock,
                    obscureText: true,
                  ),
                  const SizedBox(height: 10),
                  _buildTextField(
                    controller: confirmpassword,
                    label: "Confirm Password",
                    icon: Icons.lock_outline,
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 193, 163, 205),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Map<String, dynamic> data = {
                            'name': name.text,
                            'age': age.text,
                            'district': district.text,
                            'post': post.text,
                            'email': email.text,
                            'password': password.text,
                            'place': place.text,
                            'username': username.text,
                            'password': password.text,
                            'confirmpassword': confirmpassword.text,
                          };
                          registration(data, email.text, password.text);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 193, 163, 205),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          "REGISTER",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                          );
                        },
                        child: const Text(
                          "Login Now",
                          style: TextStyle(
                            color: Color.fromARGB(255, 193, 163, 205),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Function to create a common styled TextField widget
  Widget _buildTextField(
      {required TextEditingController controller,
      required String label,
      required IconData icon,
      bool obscureText = false}) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
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