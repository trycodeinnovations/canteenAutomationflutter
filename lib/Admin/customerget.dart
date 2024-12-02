import 'package:canteenautomation/Usermodel/usermodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


Future customergetfun() async{

try {
   var update = FirebaseFirestore.instance.collection("users");
    QuerySnapshot querySnapshot = await update.get();
    print(querySnapshot.docs.length);
    print("aaaaaaaaaaaaaaaaaaaaaaa");
    print(customerlist.length);
     customerlist= querySnapshot.docs.map((doc) {
      return Customermodel(

        
          id: doc.id,
          
          name: doc['name']??'',
          post: doc['post']??'',
          place: doc['place']??'',
          district: doc['district']??'',
           age: doc['age']??'',
          





        );
    }).toList();
   
  
} catch (e) {

  print(e);
  return[];
}
}

List<Customermodel> customerlist=[];