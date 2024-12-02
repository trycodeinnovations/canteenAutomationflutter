import 'package:canteenautomation/staffmodel/staffmodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


Future staffgetfun() async{

try {
   var update = FirebaseFirestore.instance.collection("staff");
    QuerySnapshot querySnapshot = await update.get();
    print(querySnapshot.docs.length);
    print("aaaaaaaaaaaaaaaaaaaaaaa");
    print(stafflist.length);
     stafflist= querySnapshot.docs.map((doc) {
      return Staffmodel(

        
          id: doc.id,
          
          name: doc['name']??'',
          post: doc['post']??'',
          place: doc['place']??'',
          district: doc['district']??'',
          





        );
    }).toList();
   
  
} catch (e) {

  print(e);
  return[];
}
}

List<Staffmodel> stafflist=[];