// import 'package:canteenautomation/Canteenmodel/canteenmodel.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// Future canteenget() async {
//   try {
//     // String? email= FirebaseAuth.instance.currentUser!.email;
//     var update = FirebaseFirestore.instance.collection('canteen');
//     QuerySnapshot querySnapshot = await update.get();
//     print(querySnapshot.docs);
//     canteendata = querySnapshot.docs.map((doc) {
//       return Canteenmodel(
//           id: doc.id ,
//           name: doc['name']?? '',
//           age: doc['age']?? '',
//           post: doc['post']?? '',
//           place: doc['place']?? '',
//           email: doc['email']?? '',
//           image: doc['image']??'',
//           district: doc['district']??'',
//           );
      
//     }).toList();
//     // canteendata=employeedata;
//     print(canteendata[0].email);
//   } catch (e) {
//     print(e);
//   }
// }

// List<Canteenmodel> canteendata = [];