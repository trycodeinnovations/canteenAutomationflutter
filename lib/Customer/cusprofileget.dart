import 'package:canteenautomation/Usermodel/usermodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';
List<Customermodel> customerprofilelist=[];

Future custproget() async{
var email =FirebaseAuth.instance.currentUser!.email;
try {
   var update = FirebaseFirestore.instance.collection("users").where('email',isEqualTo: email);
    QuerySnapshot querySnapshot = await update.get();
    print(querySnapshot.docs.length);
     customerprofilelist = querySnapshot.docs.map((doc) {
      return Customermodel(

        
          id: doc.id,
          age:doc['age']??'',
          
          name: doc['name']??'',
          post: doc['post']??'',
          place: doc['place']??'',
          district: doc['district']??'',
          
        );
    }).toList();
   customerprofilelist=customerprofilelist;


print(customerprofilelist.length);


  
} catch (e) {

  print(e);
}

}