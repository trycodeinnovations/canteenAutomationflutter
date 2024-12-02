// import 'package:canteenautomation/Admin/customerget.dart';
// import 'package:canteenautomation/Admin/staffget.dart';
// import 'package:canteenautomation/Admin/stafflist.dart';
// import 'package:canteenautomation/Admin/totalearnings.dart';
// import 'package:canteenautomation/Admin/userlist.dart';
// import 'package:canteenautomation/Admin/viewcanteenearning.dart';
// import 'package:canteenautomation/Admin/viewcomplaint.dart';
// import 'package:canteenautomation/Admin/viewusers.dart';
// import 'package:canteenautomation/Customer/viewcanteen.dart';
// import 'package:flutter/material.dart';

// class Adminhome extends StatelessWidget {
//   const Adminhome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Stack(
//           children: [
//             // Background Image
//             Center(
//               child: Container(
//                 height: double.infinity,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage('assets/images/canteen.jpeg'),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 child: Container(
//                   color: Colors.black54, // Overlay for better readability
//                 ),
//               ),
//             ),
//             // Main Content
//             Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // Button for Viewing Staff
//                   _buildActionButton(
//                     context,
//                     label: "VIEW STAFF",
//                     onPressed: () {
//                       staffgetfun();
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => Adminviewstafflist(),
//                         ),
//                       );
//                     },
//                   ),
//                   SizedBox(height: 18),
//                   // Button for Viewing Customers
//                   _buildActionButton(
//                     context,
//                     label: "VIEW CUSTOMER",
//                     onPressed: () {
//                       customergetfun();
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => AdminviewUserlist(),
//                         ),
//                       );
//                     },
//                   ),
//                   SizedBox(height: 18),
//                   // Button for Total Earnings
//                   _buildActionButton(
//                     context,
//                     label: "TOTAL EARNINGS",
//                     onPressed: () {
//                       Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => ViewCanteenearng(),
//                         ),
//                       );
//                     },
//                   ),
//                   SizedBox(height: 18),
//                 ],
//               ),
//             ),
//             // Complaints Icon Button
//             Positioned(
//               right: 20,
//               top: 10,
//               child: IconButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => Viewcomplaints(),
//                     ),
//                   );
//                 },
//                 icon: Icon(Icons.reviews),
//                 color: Colors.white, // Ensure icon is visible
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Method to build action buttons
//   Widget _buildActionButton(BuildContext context, {required String label, required VoidCallback onPressed}) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(8),
//           gradient: LinearGradient(
//             colors: [Colors.grey.shade700, Colors.grey.shade600],
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black26,
//               blurRadius: 8,
//               offset: Offset(0, 4),
//             ),
//           ],
//         ),
//         height: 84,
//         width: double.infinity,
//         child: TextButton(
//           onPressed: onPressed,
//           style: TextButton.styleFrom(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(8),
//             ),
//           ),
//           child: Text(
//             label,
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:canteenautomation/Admin/customerget.dart';
import 'package:canteenautomation/Admin/customerget.dart';
import 'package:canteenautomation/Admin/staffget.dart';
import 'package:canteenautomation/Admin/stafflist.dart';
import 'package:canteenautomation/Admin/userlist.dart';
import 'package:canteenautomation/Admin/viewcomplaint.dart';
import 'package:flutter/material.dart';

class Adminhome extends StatelessWidget {
  const Adminhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            // Background Color for Food Theme (Soft yellow or light orange)
            Center(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: const Color.fromARGB(255, 255, 239, 204), // Light food-friendly color
              ),
            ),
            // Main Content with Centered Buttons
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Button for Viewing Staff
                  _buildActionButton(
                    context,
                    label: "VIEW STAFF",
                    onPressed: () {
                      staffgetfun();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Adminviewstafflist(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  // Button for Viewing Customers
                  _buildActionButton(
                    context,
                    label: "VIEW CUSTOMER",
                    onPressed: () {
                      customergetfun();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AdminviewUserlist(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  // Button for Total Earnings (optional, currently commented out)
                  // _buildActionButton(
                  //   context,
                  //   label: "TOTAL EARNINGS",
                  //   onPressed: () {
                  //     Navigator.pushReplacement(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => ViewCanteenearng(),
                  //       ),
                  //     );
                  //   },
                  // ),
                ],
              ),
            ),
            // Complaints Icon Button with Enhanced Visibility
            Positioned(
              right: 20,
              top: 20,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Viewcomplaints(),
                    ),
                  );
                },
                icon: const Icon(Icons.reviews),
                color: Colors.white,
                iconSize: 30, // Larger icon for better visibility
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method to build action buttons with a food theme
  Widget _buildActionButton(BuildContext context, {required String label, required VoidCallback onPressed}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [Colors.orange.shade700, Colors.orange.shade400], // Food-themed gradient (orange)
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 10,
              offset: Offset(0, 6),
            ),
          ],
        ),
        height: 70,
        width: double.infinity,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
            ),
          ),
        ),
      ),
    );
  }
}
