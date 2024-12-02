// import 'package:canteenautomation/Admin/customerget.dart';
// import 'package:canteenautomation/Admin/staffdetails.dart';
// import 'package:canteenautomation/Admin/staffget.dart';
// import 'package:canteenautomation/Admin/stafflist.dart';
// import 'package:canteenautomation/Admin/userlist.dart';
// import 'package:canteenautomation/Admin/viewcomplaint.dart';
// import 'package:flutter/material.dart';

// class Viewusers extends StatelessWidget {
//   const Viewusers ({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Stack(
//           children: [

//             Center(
//               child: Container(
//                 height: double.infinity,
//               width: double.infinity,
//                 decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/images2.jpeg'),fit: BoxFit.fill)),
//                 child: Column(
//                    mainAxisAlignment:MainAxisAlignment.center,
//                   children: [
                   
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: Colors.grey, ),
//                         height: 84,
//                         width: double.infinity,
                        
//                         child: TextButton(onPressed: () {
//                           staffgetfun();
//                           Navigator.push(context, MaterialPageRoute(builder: (context) => Adminviewstafflist(),));
//                         }, child: Text("VIEW STAFFS",style: TextStyle(color: Colors.white),)),
//                       ),
//                     ),
//                     SizedBox(height: 18,),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: Colors.grey, ),
//                         height: 84,
//                         width: double.infinity,
                        
//                         child: TextButton(onPressed: () {
//                           customergetfun();
//                           Navigator.push(context, MaterialPageRoute(builder: (context) => AdminviewUserlist(),));
//                         }, child: Text("VIEW CUSTOMERS",style: TextStyle(color: Colors.white),)),
//                       ),
//                     ),
                   
//                     SizedBox(height: 18,),
//                   ],
//                 ),
//               ),
//             ),
//             // Positioned(
//             //   right: 10,top: 5,
//             //   child: IconButton(onPressed: (){
//             //     Navigator.pushNamed(context, "adminviewcustomers");
//             //   }, icon: Icon(Icons.person))),
//             //   Positioned(
//             //     right: 40,top: 10,
//             //     child: IconButton(onPressed: () {
//             //       Navigator.pushNamed(context, "adminviewcustfeedback");
//             //     }, icon: Icon(Icons.reviews)),
//             //   )
//           ],
//         ),
//       ),
  
// );
// }
// }