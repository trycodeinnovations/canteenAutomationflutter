import 'package:cloud_firestore/cloud_firestore.dart';

Future placedordersfun(data,)async{
  print('hello');

 
  FirebaseFirestore firestore=FirebaseFirestore.instance;

  try {
    
  firestore.collection('orders').add(data);
      print('successs');
  } catch (e) {
    print(e);
    
  }
 
  
  
}