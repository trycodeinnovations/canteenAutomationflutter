import 'package:cloud_firestore/cloud_firestore.dart';

Future complaintfunction(data)async{
  print('hello');

  // FirebaseAuth auth=FirebaseAuth.instance;
  FirebaseFirestore firestore=FirebaseFirestore.instance;

  try {
    // UserCredential user= await auth.createUserWithEmailAndPassword(email:email, password:pass );

  firestore.collection('complaints').add(data);
      print('successs');
  } catch (e) {
    print(e);
    
  }}