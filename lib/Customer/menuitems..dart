// // import 'package:flutter/material.dart';

// import 'package:canteenautomation/Customer/fooditemsget.dart';
// import 'package:canteenautomation/Customer/payment.dart';
// import 'package:flutter/material.dart';

// class MenuScreen extends StatelessWidget {
//   const MenuScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Menu',
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//             color: Colors.white, // White text for contrast
//           ),
//         ),
//         backgroundColor: Colors.blue, // Blue theme for the AppBar
//         elevation: 5,
//       ),
//       body: Container(
//         color: Colors.blue[50], // Light blue background for the body
//         child: GridView.builder(
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             mainAxisSpacing: 10,
//             crossAxisSpacing: 10,
//             childAspectRatio: .7,
//           ),
//           itemCount: fooditemsdata.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Card(
//               elevation: 5, // Reduced elevation for a subtle shadow
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(15), // Softer rounded corners
//               ),
//               color: Colors.white,
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(10),
//                       child: Container(
//                         height: 100,
//                         width: double.infinity,
//                         child: Image.network(
//                           fooditemsdata[index].image,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           fooditemsdata[index].name,
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.orange, // Orange for item name
//                           ),
//                         ),
//                         const SizedBox(height: 2),
//                         Text(
//                           fooditemsdata[index].price,
//                           style: TextStyle(
//                             fontSize: 16,
//                             color: Colors.green.shade700, // Green for price
//                           ),
//                         ),
//                         const SizedBox(height: 2),
//                         Text(
//                           fooditemsdata[index].description,
//                           maxLines: 2,
//                           overflow: TextOverflow.ellipsis,
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.grey.shade800, // Neutral color for description
//                           ),
//                         ),
//                         const SizedBox(height: 2),
//                         Text(
//                           fooditemsdata[index].canteenname,
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w600,
//                             color: Colors.blue, // Blue for canteen name
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const Spacer(),
//                   Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.pushReplacement(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => PaymentScreen(
//                               name: fooditemsdata[index].name,
//                               price: fooditemsdata[index].price,
//                               description: fooditemsdata[index].description,
//                               image: fooditemsdata[index].image,
//                               canteenname: fooditemsdata[index].canteenname,
//                             ),
//                           ),
//                         );
//                       },
//                       child: const Text(
//                         "ORDER",
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                         foregroundColor: Colors.white,
//                         backgroundColor: Colors.orange, // Orange button
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20), // Rounded button
//                         ),
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 20,
//                           vertical: 10,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
// import 'package:canteenautomation/Customer/fooditemsget.dart';
import 'package:canteenautomation/Customer/fooditemsget.dart';
import 'package:canteenautomation/Customer/payment.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orange.shade100, Colors.red.shade100],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            // Custom Header
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              color: Colors.brown[100],
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.fastfood, color: Colors.orange, size: 30),
                  SizedBox(width: 8),
                  Text(
                    ' Menu',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: .7,
                ),
                itemCount: fooditemsdata.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: Colors.orange.shade50,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              height: 100,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(fooditemsdata[index].image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                fooditemsdata[index].name,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                fooditemsdata[index].price,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.green.shade700,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                fooditemsdata[index].description,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey.shade800,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                fooditemsdata[index].canteenname,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.redAccent,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PaymentScreen(
                                    name: fooditemsdata[index].name,
                                    price: fooditemsdata[index].price,
                                    description: fooditemsdata[index].description,
                                    image: fooditemsdata[index].image,
                                    canteenname: fooditemsdata[index].canteenname,
                                  ),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.orange.shade700,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                            ),
                            child: const Text(
                              "ORDER",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
