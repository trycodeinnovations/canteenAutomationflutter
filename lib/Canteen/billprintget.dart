// import 'package:canteenautomation/Canteenmodel/canteenmodel.dart';
// import 'package:canteenautomation/Customer/fooditemsget.dart';
// import 'package:canteenautomation/biilprintmodel/billprintmodel.dart';
// import 'package:canteenautomation/fooditemsmodel/fooditemmodel.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// Future billprintget() async {
//   try {
//     // String? email= FirebaseAuth.instance.currentUser!.email;
//     var update = FirebaseFirestore.instance.collection('billprint');
//     QuerySnapshot querySnapshot = await update.get();
//     print(querySnapshot.docs);
//     print('object');
//     billprintdata = querySnapshot.docs.map((doc) {
//       return Billprintmodel(
//           id: doc.id ,
//           name: doc['name']?? '',
//           PRICE: doc['PRICE']?? '',
          
          
//           );
      
//     }).toList();
//     // canteendata=employeedata;
//     print(billprintdata[0].PRICE);
//   } catch (e) {
//     print(e);
//   }
// }

// List<Billprintmodel> billprintdata = [];