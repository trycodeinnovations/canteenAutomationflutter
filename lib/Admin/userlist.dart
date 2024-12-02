// import 'package:canteenautomation/Admin/customerget.dart';
// import 'package:canteenautomation/Admin/viewcustdetails.dart';
// import 'package:canteenautomation/Admin/viewusers.dart';
// import 'package:flutter/material.dart';

// class AdminviewUserlist extends StatelessWidget {
//   const AdminviewUserlist({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("User"),
//         backgroundColor: Colors.white, // Improved app bar color
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: ListView.builder(
//           itemCount: customerlist.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Padding(
//               padding: const EdgeInsets.symmetric(vertical: 8.0), // Vertical spacing
//               child: Card(
//                 elevation: 5, // Added shadow for depth
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12), // Rounded corners
//                 ),
//                 color: Color.fromARGB(255, 251, 219, 246), // Background color
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Padding(
//                         padding: const EdgeInsets.all(16.0), // Increased padding
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               customerlist[index].name,
//                               style: TextStyle(
//                                 fontSize: 18, // Increased font size
//                                 fontWeight: FontWeight.bold, // Bold text
//                               ),
//                             ),
//                             SizedBox(height: 4), // Spacing between text lines
//                             Text(
//                               customerlist[index].place,
//                               style: TextStyle(
//                                 fontSize: 14, // Slightly larger text
//                                 color: Colors.grey[600], // Grey text for secondary info
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     IconButton(
//                       onPressed: () {
//                         Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => AdminViewuserdetails(
//                             user: customerlist[index],
//                           ),
//                         ));
//                       },
//                       icon: Icon(
//                         Icons.arrow_forward_ios,
//                         color: Colors.deepPurple, // Icon color matching the app bar
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
// import 'package:canteenautomation/Admin/customerget.dart';
// import 'package:canteenautomation/Admin/customerget.dart';
import 'package:canteenautomation/Admin/customerget.dart';
import 'package:canteenautomation/Admin/viewcustdetails.dart';
import 'package:flutter/material.dart';

class AdminviewUserlist extends StatelessWidget {
  const AdminviewUserlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Users",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.deepOrange[800], // Food-related color for the title
          ),
        ),
        backgroundColor: Colors.white, // Clean app bar with white background
        elevation: 0, // Remove shadow for a flat look
      ),
      body: Stack(
        children: [
          // Removed Background Image and replaced it with food-related background color
          Container(
            height: double.infinity,
            width: double.infinity,
            color: const Color(0xFFF9F4E1), // Light food-related pastel yellow
          ),
          // Main content: ListView with modern cards
          Padding(
            padding: const EdgeInsets.all(16.0), // Spacious padding around the list
            child: ListView.builder(
              itemCount: customerlist.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0), // Spacing between cards
                  child: Card(
                    elevation: 8, // Soft shadow for depth
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16), // Rounded corners for a sleek look
                    ),
                    color: const Color.fromARGB(255, 255, 243, 211), // Light food-related color (cream/yellowish)
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0), // Spacious inner padding
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  customerlist[index].name,
                                  style: TextStyle(
                                    fontSize: 20, // Larger font for the name
                                    fontWeight: FontWeight.bold, // Bold text
                                    color: Colors.deepOrange[800], // Food-related color for the name
                                  ),
                                ),
                                const SizedBox(height: 6), // Spacing for text
                                Text(
                                  customerlist[index].place,
                                  style: TextStyle(
                                    fontSize: 16, // Slightly larger font for place
                                    color: Colors.grey[600], // Lighter grey for secondary info
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AdminViewuserdetails(
                                user: customerlist[index],
                              ),
                            ));
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.deepOrange[700], // Icon color matching the food theme
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
