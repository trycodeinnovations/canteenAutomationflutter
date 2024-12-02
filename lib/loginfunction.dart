import 'package:canteenautomation/Admin/complaintget.dart';
import 'package:canteenautomation/Admin/customerget.dart';
import 'package:canteenautomation/Admin/adminhome.dart';
import 'package:canteenautomation/Admin/staffget.dart';

import 'package:canteenautomation/Canteen/home.dart';
import 'package:canteenautomation/Canteen/orderplacedget.dart';
import 'package:canteenautomation/Canteen/staffviewprofileget.dart';
import 'package:canteenautomation/Customer/Customerhome.dart';
import 'package:canteenautomation/Customer/Viewcanteenget.dart';
import 'package:canteenautomation/Customer/canteenfoodget.dart';
import 'package:canteenautomation/Customer/cusprofileget.dart';
import 'package:canteenautomation/Customer/fooditemsget.dart';
import 'package:canteenautomation/Customer/viewcartget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
String? staffid;

Future login(email, password, context) async {
  FirebaseAuth auther = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  try {
    UserCredential user = await auther.signInWithEmailAndPassword(
        email: email, password: password);
    if (user.user != null) {
      if (email == "admin2@gmail.com") {
        // artistgetfun();
        // customergetfun();
        await Viewcanteenget();
                await complaintsget();
                await customergetfun();
                await staffgetfun();
              
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const Adminhome(),
            ));
      } else  {
        QuerySnapshot<Map<String, dynamic>> artistDoc = await firestore
            .collection('users')
            .where('email', isEqualTo: email)
            .get();
        print(artistDoc.docs);
        // print()
        if (artistDoc.docs.isNotEmpty) {
          print("Document exists");
          // var fieldValue = artistDoc.get('fieldname');  // Replace 'fieldname' with the actual field name
          // print(fieldValue);
          viewcartget();
          await  fooditemsget();
          await Viewcanteenget();
          await custproget();
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => Customerhome()));
        } else {
 QuerySnapshot<Map<String, dynamic>> artistDoc = await firestore
            .collection('staff')
            .where('email', isEqualTo: email)
            .get();
            print(artistDoc.docs);
                    if (artistDoc.docs.isNotEmpty) {
                      staffid=artistDoc.docs.first.id;
          // Validate the password
          // await deletefuditems();
            await orderplacedget();

           await staffprofilegetfun();
           await canteenfooditemsget(staffid);
           Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => Canteenhome()));
        
        }        }
       
//        
      }
      
      
      //  print("success");
    } else {
      print("failed");
      
    }
  } catch (e) {
    print(e);
  }
}

// Future<void> login(BuildContext context, String email, String password) async {
//   FirebaseAuth auth = FirebaseAuth.instance;
//   FirebaseFirestore firestore = FirebaseFirestore.instance;

//   try {
//     // Attempt to sign in the user
//     UserCredential userCredential = await auth.signInWithEmailAndPassword(email: email, password: password);
//     User? user = userCredential.user;

//     if (user != null) {
//       // Check if the user is the admin
//       if (email == "admin@example.com") { // Replace with your admin email
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => AdminHomeScreen()),
//         );
//       } else {
//         // Check in the artists collection
//         DocumentSnapshot artistDoc = await firestore.collection('artists').doc(user.uid).get();
//         if (artistDoc.exists) {
//           // Validate the password
//           if (artistDoc['password'] == password) {
//             Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(builder: (context) => ArtistHomeScreen()),
//             );
//             artistgetfun();
//             customergetfun();
//           } else {
//             print("Incorrect password for artist");
//           }
//         } else {
//           // Check in the customers collection
//           DocumentSnapshot customerDoc = await firestore.collection('customers').doc(user.uid).get();
//           if (customerDoc.exists) {
//             // Validate the password
//             if (customerDoc['password'] == password) {
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(builder: (context) => CustomerHomeScreen()),
//               );
//               customergetfun();
//             } else {
//               print("Incorrect password for customer");
//             }
//           } else {
//             print("User does not belong to any role");
//           }
//         }
//       }
//     } else {
//       print("Login failed: User is null");
//     }
//   } catch (e) {
//     print("Login failed: $e");
//   }
// }