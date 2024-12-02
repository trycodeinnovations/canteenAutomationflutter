// import 'package:canteenautomation/Customer/complaintfuntn.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class ComplaintPage extends StatelessWidget {
//   final TextEditingController nameController = TextEditingController();
  
//   final TextEditingController complaintController = TextEditingController();
  
  
//   // final TextEditingController canteenname = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('FEEDBACK'),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             TextField(
//               controller: nameController,
//               decoration: InputDecoration(
//                 labelText: 'Canteen Name',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 16.0),
            
//             TextField(
//               controller: complaintController,
//               decoration: InputDecoration(
//                 labelText: 'Feedback',
//                 border: OutlineInputBorder(),
//               ),
//               maxLines: 5,
//             ),
//             SizedBox(height: 24.0),
//             ElevatedButton(onPressed: (){
//                Map<String, dynamic> data = {
//                 'canteenname': nameController.text,
//                   'complaint': complaintController.text,
//                   'userid': FirebaseAuth.instance.currentUser!.email ,
//               //  'canteenid': canteenname ,
//                };
//                complaintfunction(data);
//             }, child: Text("submit"))
            
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:canteenautomation/Customer/complaintfuntn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ComplaintPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController complaintController = TextEditingController();

  ComplaintPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Feedback',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.orangeAccent.shade700, // Food theme color
        elevation: 4,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orange.shade100, Colors.red.shade100],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "We value your feedback!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Canteen Name',
                  labelStyle: const TextStyle(color: Colors.brown),
                  filled: true,
                  fillColor: Colors.orange.shade50,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.orange.shade300),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.orange.shade300),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: complaintController,
                decoration: InputDecoration(
                  labelText: 'Feedback',
                  labelStyle: const TextStyle(color: Colors.brown),
                  filled: true,
                  fillColor: Colors.orange.shade50,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.orange.shade300),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.orange.shade300),
                  ),
                ),
                maxLines: 5,
              ),
              const SizedBox(height: 24.0),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent.shade700,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Map<String, dynamic> data = {
                      'canteenname': nameController.text,
                      'complaint': complaintController.text,
                      'userid': FirebaseAuth.instance.currentUser!.email,
                    };
                    complaintfunction(data);
                  },
                  child: const Text(
                    "Submit",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
