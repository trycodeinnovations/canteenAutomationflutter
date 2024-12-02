import 'package:cloud_firestore/cloud_firestore.dart';

Future canteenviewfun(data)async{
  print('hello');

  // FirebaseAuth auth=FirebaseAuth.instance;
  FirebaseFirestore firestore=FirebaseFirestore.instance;

  try {
    // UserCredential user= await auth.createUserWithEmailAndPassword(email:email, password:pass );

  firestore.collection('fooditems').add(data);
  
  // await canteenfooditemsget(staffid);
  //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctxt)=>ViewfoodScreen()));
      print('successs');
  } catch (e) {
    print(e);
    
  }
 
  
  
}