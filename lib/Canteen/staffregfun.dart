import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future staffregistration(data,email,pass)async{
  print('hello');

  FirebaseAuth auth=FirebaseAuth.instance;
  FirebaseFirestore firestore=FirebaseFirestore.instance;

  try {
    UserCredential user= await auth.createUserWithEmailAndPassword(email:email, password:pass );
  print('successs');
  firestore.collection('staff').doc(email).set(data);
    
  } catch (e) {
    print(e);
    
  }
 
  
  
}