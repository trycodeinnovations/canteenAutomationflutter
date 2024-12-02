// import 'package:canteenautomation/Canteen/billprintfunction.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class BillprintScreen extends StatelessWidget {
//    BillprintScreen({super.key});
//      TextEditingController name = TextEditingController();
//      TextEditingController price = TextEditingController();




//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//       title: Center(child: Text("BILL",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w700),)),

//       ),
//       body: Column(
//         children: [
             
//                    TextFormField(
//                    controller: name,
//                     decoration: InputDecoration(
//                         label: Text("Name"),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20))),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),    
//                   TextFormField(
//                    controller: price,
//                     decoration: InputDecoration(
//                         label: Text("Price"),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20))),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),              ElevatedButton(onPressed: (){
//                      Map<String, dynamic> data = {
            
//                   'name': name.text,
//                   'PRICE': price.text,
                
//                   };  
//                   billprintfunction(data, );
//                   }, child: Text("SUBMIT")),
      
          
      
//         ],
//       ),
//     );
//   }
// }