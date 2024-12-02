// import 'package:canteenautomation/Admin/complaintget.dart';
// import 'package:canteenautomation/Customer/Viewcanteenget.dart';
// import 'package:flutter/material.dart';

// class Viewcomplaints extends StatelessWidget {
//   const Viewcomplaints({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: complaintsdata.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Column(
//             children: [
//               Container(
//                 height: 100,
//                 width: double.infinity,
//                 color: Colors.grey,
//                 child: Column(
//                   children: [
//                     Row(
                      
//                       children: [
//                         Expanded(child: Text(complaintsdata[index].complaint)),
//                         Text(complaintsdata[index].canteenname),
//                             Text(complaintsdata[index].userid),
                        
                       
                    
//                         TextButton(onPressed: () {
//                       // Navigator.pushNamed(context, "adminreply");
//                     }, child: Text("")),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
              
            
//             ],
//           );
//         },
//      ),
// );
// }
// }
// import 'package:canteenautomation/Admin/complaintget.dart';
// import 'package:canteenautomation/Admin/complaintget.dart';
import 'package:canteenautomation/Admin/complaintget.dart';
import 'package:flutter/material.dart';

class Viewcomplaints extends StatelessWidget {
  const Viewcomplaints({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "View Feedbacks",
          style: TextStyle(
            color: Colors.deepOrangeAccent, // Food-inspired color
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 4.0,
      ),
      body: ListView.builder(
        itemCount: complaintsdata.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.orange.shade50, // Light food-related color
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Complaint Text with a food-themed color
                    Text(
                      complaintsdata[index].complaint,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade700, // Food-related color
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),

                    // Canteen Name and User ID with a food theme
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Canteen: ${complaintsdata[index].canteenname}',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.deepOrange[700], // Warm color
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'User: ${complaintsdata[index].userid}',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.orange.shade700, // Warm and food-related color
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    // Optional Respond Button (for future use, styled in food colors)
                    // Align(
                    //   alignment: Alignment.centerRight,
                    //   child: TextButton(
                    //     onPressed: () {
                    //       // Navigate to the reply page if needed
                    //       // Navigator.pushNamed(context, "adminreply");
                    //     },
                    //     child: Text(
                    //       'Respond',
                    //       style: TextStyle(
                    //         color: Colors.orange,
                    //         fontWeight: FontWeight.w600,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
