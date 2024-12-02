import 'package:canteenautomation/staffmodel/staffmodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';
List<Staffmodel> staffprofilelist=[];

Future staffprofilegetfun() async{
var email =FirebaseAuth.instance.currentUser!.email;
try {
   var update = FirebaseFirestore.instance.collection("staff").where('email',isEqualTo: email);
    QuerySnapshot querySnapshot = await update.get();
    print(querySnapshot.docs.length);
     staffprofilelist = querySnapshot.docs.map((doc) {
      return Staffmodel(

        
          id: doc.id,
          name: doc['name']??'',
          post: doc['post']??'',
          place: doc['place']??'',
          district: doc['district']??'',
          
        );
    }).toList();
   staffprofilelist=staffprofilelist;


print(staffprofilelist.length);


  
} catch (e) {

  print(e);

}

}