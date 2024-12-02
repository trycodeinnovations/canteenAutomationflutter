import 'package:canteenautomation/fooditemsmodel/fooditemmodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future canteenfooditemsget(String? staffid) async {
  try {
    // String? email= FirebaseAuth.instance.currentUser!.email;
    var update = FirebaseFirestore.instance.collection('fooditems').where('staffid',isEqualTo: staffid);
    QuerySnapshot querySnapshot = await update.get();
    print(querySnapshot.docs);
    print('object');
    canteenfooditemsdata = querySnapshot.docs.map((doc) {
      return Fooditemsmodel(
          id: doc.id ,
          name: doc['name']?? '',
          description: doc['description']?? '',
          price: doc['price']?? '',
          image: doc['image']?? '',
          canteenname: doc['canteenname']??'',
          
          );
      
    }).toList();
    // canteendata=employeedata;
    print(canteenfooditemsdata[0].image);
  } catch (e) {
    print(e);
  }
}

List<Fooditemsmodel> canteenfooditemsdata = [];