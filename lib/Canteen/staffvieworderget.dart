import 'package:canteenautomation/staffviewordermodel/staffviewordermodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future staffvieworderget() async {
  try {
    // String? email= FirebaseAuth.instance.currentUser!.email;
    var update = FirebaseFirestore.instance.collection('order');
    QuerySnapshot querySnapshot = await update.get();
    print(querySnapshot.docs);
    print('object');
    staffviewdata = querySnapshot.docs.map((doc) {
      return Staffviewordermodel(
          id: doc.id ,
          name: doc['name']?? '',
          description: doc['description']?? '',
          price: doc['price']?? '',
          image: doc['image']?? '',
          userid: doc['userid']?? '',

        
          
          );
      
    }).toList();
    // canteendata=employeedata;
    print(staffviewdata[0].price);
  } catch (e) {
    print(e);
  }
}

List<Staffviewordermodel> staffviewdata = [];