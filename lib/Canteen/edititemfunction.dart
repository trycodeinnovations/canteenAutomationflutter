import 'package:canteenautomation/Canteen/viewfooditems2.dart';
import 'package:canteenautomation/Customer/canteenfoodget.dart';
import 'package:canteenautomation/loginfunction.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Future editfooditemfunction(data,id,context)async{
  print('hello');

  // FirebaseAuth auth=FirebaseAuth.instance;
  FirebaseFirestore firestore=FirebaseFirestore.instance;

  try {
    // UserCredential user= await auth.createUserWithEmailAndPassword(email:email, password:pass );
  print('successs');
  firestore.collection('fooditems').doc(id).update(data);
  await canteenfooditemsget(staffid);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctxt)=>const EdititemScreen()));
  } catch (e) {
    print("hghfgh");
    print(e);
    
  }
 
  
  
}