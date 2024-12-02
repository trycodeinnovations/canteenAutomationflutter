import 'package:flutter/material.dart';

class Staffprofileupdation extends StatelessWidget {
   Staffprofileupdation({super.key});
  TextEditingController NameController = TextEditingController();
  TextEditingController AgeController = TextEditingController();
  
  TextEditingController emailController = TextEditingController();
  TextEditingController districtController = TextEditingController();
    TextEditingController placeController = TextEditingController();
        TextEditingController postController = TextEditingController();




  TextEditingController usernameController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Center(
                    child: Text(
                  "PROFILE UPDATION",
                  style: TextStyle(color: Color.fromARGB(255, 248, 248, 248)),
                )),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
                  controller: NameController,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Age",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
                  controller: AgeController,
                ),
                
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
                  controller: emailController,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "place",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
                  controller: placeController,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Post",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
                  controller: postController,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
                  controller: usernameController,
                ),
                const SizedBox(
                  height: 10,
                ),
                
               TextFormField(
                  decoration: InputDecoration(
                      hintText: "District",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
                  controller: districtController,
                ),
                
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {
                    // Navigator.pushNamed(context, "custhome");
                  },
                  child: const Text(
                    "UPDATE",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
     ),
);
}
}