import 'package:canteenautomation/orderplacedmodel/orderplacedmodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future viewcartget() async {
  try {
    String? email= FirebaseAuth.instance.currentUser!.email;
    var update = FirebaseFirestore.instance.collection('orders').where('userid',isEqualTo: email);
    QuerySnapshot querySnapshot = await update.get();
    print(querySnapshot.docs);
    print('object');
    cartdata = querySnapshot.docs.map((doc) {
      return orderplacedmodel(
          id: doc.id ,
          name: doc['name']?? '',
          description: doc['description']?? '',
          price: doc['price']?? '',
          image: doc['image']?? '',
          userid: doc['userid']?? '',
          canteenid: doc['canteenid']?? '',

          

          // canteenname:doc['canteenname']?? '',
          
          );
      
    }).toList();
    // canteendata=employeedata;
    print(cartdata[0].image);
  } catch (e) {
    print(e);
  }
}

List<orderplacedmodel> cartdata = [];