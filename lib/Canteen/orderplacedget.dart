import 'package:canteenautomation/Canteen/staffviewprofileget.dart';
import 'package:canteenautomation/orderplacedmodel/orderplacedmodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future orderplacedget() async {
  try {
    // String? email= FirebaseAuth.instance.currentUser!.email;
await staffprofilegetfun();
var name =staffprofilelist.first.name;
    var update = FirebaseFirestore.instance.collection('orders').where('canteenid',isEqualTo:name);
    QuerySnapshot querySnapshot = await update.get();
    print(querySnapshot.docs);
    print('object');
    ordersdata = querySnapshot.docs.map((doc) {
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
    print(ordersdata[0].image);
  } catch (e) {
    print(e);
  }
}

List<orderplacedmodel> ordersdata = [];


double canteenTotalAmount=0;
Future ordwerGetForTotal(name) async {
  try {
    // String? email= FirebaseAuth.instance.currentUser!.email;

    var update = FirebaseFirestore.instance.collection('orders').where('canteenid',isEqualTo:name);
    QuerySnapshot querySnapshot = await update.get();
    print(querySnapshot.docs);
    print('object');
    canteenorderlistforTotal = querySnapshot.docs.map((doc) {
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
    print(canteenorderlistforTotal[0].image);
canteenTotalAmount=0;
    for(orderplacedmodel item in canteenorderlistforTotal){
      canteenTotalAmount+=double.parse(item.price);
    }
  } catch (e) {
    print(e);
  }
}

List<orderplacedmodel> canteenorderlistforTotal = [];