// // import 'package:canteenautomation/Admin/customerget.dart';
// import 'package:canteenautomation/Admin/staffdetails.dart';
// import 'package:canteenautomation/Admin/staffget.dart';
// import 'package:canteenautomation/Admin/viewcustdetails.dart';
// import 'package:canteenautomation/Admin/viewusers.dart';
// import 'package:flutter/material.dart';

// class Adminviewstafflist extends StatelessWidget {
//   const Adminviewstafflist({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "STAFF",
//           style: TextStyle(
//             color: Colors.deepPurple,
//             fontWeight: FontWeight.bold,
//             letterSpacing: 1.5,
//           ),
//         ),
//         backgroundColor: Colors.white,
//         elevation: 4,
//         centerTitle: true,
//         iconTheme: IconThemeData(color: Colors.deepPurple),
//       ),
//       body: Stack(
//         children: [
//           // Background Image
//           Container(
//             height: double.infinity,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/canteen.jpeg'), // Replace with your image path
//                 fit: BoxFit.cover,
//                 colorFilter: ColorFilter.mode(
//                   Colors.black.withOpacity(0.3), // Dark overlay for readability
//                   BlendMode.darken,
//                 ),
//               ),
//             ),
//           ),
//           // Main Content
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: ListView.builder(
//               itemCount: stafflist.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 8.0),
//                   child: Card(
//                     elevation: 6,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(16),
//                     ),
//                     color: Color.fromARGB(200, 255, 245, 250),
//                     shadowColor: Colors.deepPurple.withOpacity(0.2),
//                     child: Row(
//                       children: [
//                         // Profile Image Placeholder
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: CircleAvatar(
//                             radius: 30,
//                             backgroundImage: AssetImage('assets/images/profile_placeholder.png'), // Replace with actual path
//                           ),
//                         ),
//                         Expanded(
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(vertical: 12.0),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   stafflist[index].name,
//                                   style: TextStyle(
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.w600,
//                                     color: Colors.deepPurple[800],
//                                   ),
//                                 ),
//                                 SizedBox(height: 6),
//                                 Text(
//                                   stafflist[index].place,
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     color: Colors.deepPurple[300],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         IconButton(
//                           onPressed: () {
//                             Navigator.of(context).push(
//                               MaterialPageRoute(
//                                 builder: (context) => AdminViewstaffdetails(
//                                   staff: stafflist[index],
//                                 ),
//                               ),
//                             );
//                           },
//                           icon: Icon(
//                             Icons.arrow_forward_ios,
//                             color: Colors.deepPurple[300],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'package:canteenautomation/Admin/customerget.dart';
import 'package:canteenautomation/Admin/staffdetails.dart';
import 'package:canteenautomation/Admin/staffget.dart';
import 'package:flutter/material.dart';

class Adminviewstafflist extends StatelessWidget {
  const Adminviewstafflist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "STAFF",
          style: TextStyle(
            color: Colors.deepOrange, // Changed to a warmer color to suit the food theme
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 4,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.deepOrange),
      ),
      body: Stack(
        children: [
          // Removed Background Image and replaced with solid color
          Container(
            height: double.infinity,
            width: double.infinity,
            color: const Color(0xFFF4E1D2), // Soft light color that matches a food theme
          ),
          // Main Content
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
              itemCount: stafflist.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    color: const Color.fromARGB(255, 255, 240, 230), // Light warm color
                    shadowColor: Colors.deepOrange.withOpacity(0.2),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0), // Added padding for balanced layout
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  stafflist[index].name,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.deepOrange[800], // Changed to a food-friendly color
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  stafflist[index].place,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.deepOrange[300],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => AdminViewstaffdetails(
                                    staff: stafflist[index],
                                  ),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.deepOrange[300],
                            ),
                          ),
                        ],
                      ),
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
