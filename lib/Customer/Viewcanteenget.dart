import 'package:canteenautomation/Canteenmodel/canteenmodel.dart';
import 'package:canteenautomation/loginfunction.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future Viewcanteenget() async {
  try {
    // String? email= FirebaseAuth.instance.currentUser!.email;
    var update = FirebaseFirestore.instance.collection('staff').where('staffid',isEqualTo: staffid);
    QuerySnapshot querySnapshot = await update.get();
    print(querySnapshot.docs);
    canteendata = querySnapshot.docs.map((doc) {
      return Canteenmodel(
          id: doc.id ,
          name: doc['name']?? '',
          // age: doc['age']?? '',
          // post: doc['post']?? '',
          place: doc['place']?? '',
          // email: doc['email']?? '',
          // image: doc['image']??'',
          // district: doc['district']??'',
          );
      
    }).toList();
    // canteendata=employeedata;
    print(canteendata[0].name,);
  } catch (e) {
    print(e);
  }
}

List<Canteenmodel> canteendata = [];