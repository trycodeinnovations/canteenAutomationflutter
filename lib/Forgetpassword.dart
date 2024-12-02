
import 'package:flutter/material.dart';

class ForgetScreen extends StatelessWidget {
  ForgetScreen({super.key});
  TextEditingController mailcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: mailcontroller,
              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(7)),hintText: "email"),),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: (){

          //     Map<String, dynamic> data = {
          //       'email':mailcontroller.text,
            

          // };
              //  forgetpassword(mailcontroller.text,context);
            }, child: const Text("SUBMIT"))
          ],
        ),
      )
      
      
    );
  }
}