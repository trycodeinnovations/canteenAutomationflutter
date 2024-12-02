import 'package:cloud_firestore/cloud_firestore.dart';

Future deletefuditems(id) async{
FirebaseFirestore firestore=FirebaseFirestore.instance;
try {
  firestore.collection("fooditems").doc(id).delete();
  
} catch (e){

}

}