import 'package:canteenautomation/fooditemsmodel/fooditemmodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future fooditemsget() async {
  try {
    // String? email= FirebaseAuth.instance.currentUser!.email;
    var update = FirebaseFirestore.instance.collection('fooditems');
    QuerySnapshot querySnapshot = await update.get();
    print(querySnapshot.docs);
    print('object');
    fooditemsdata = querySnapshot.docs.map((doc) {
      return Fooditemsmodel(
          id: doc.id ,
          name: doc['name']?? '',
          description: doc['description']?? '',
          price: doc['price']?? '',
          image: doc['image']?? '',
          canteenname:doc['canteenname']?? '',
          
          );
      
    }).toList();
    // canteendata=employeedata;
    print(fooditemsdata[0].image);
  } catch (e) {
    print(e);
  }
}

List<Fooditemsmodel> fooditemsdata = [];