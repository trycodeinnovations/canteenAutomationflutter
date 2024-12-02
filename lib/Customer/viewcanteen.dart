// 

// import 'package:canteenautomation/Customer/canteenfoodget.dart';
import 'package:canteenautomation/Customer/canteenfoodget.dart';
import 'package:canteenautomation/Customer/viewfoods.dart';
import 'package:canteenautomation/Customer/Viewcanteenget.dart';
import 'package:flutter/material.dart';

class ViewCanteen extends StatelessWidget {
  const ViewCanteen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Canteens',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent.shade700, // Food-inspired header color
        elevation: 5,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orange.shade100, Colors.red.shade100],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: canteendata.length,
            itemBuilder: (BuildContext context, int index) {
              final canteen = canteendata[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.orange.shade50,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.orange.shade200, width: 1.5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.orange.shade300.withOpacity(0.3),
                        blurRadius: 6,
                        offset: const Offset(0, 3), // Warm shadow effect
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.orangeAccent.shade100,
                          child: Text(
                            canteen.name[0].toUpperCase(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                canteen.name,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown,
                                ),
                                overflow: TextOverflow.ellipsis, // Handle long names
                              ),
                              const SizedBox(height: 4),
                              Text(
                                canteen.place,
                                style: const TextStyle(
                                  fontSize: 14,
                                  // color: Colors.grey.shade700,
                                ),
                                overflow: TextOverflow.ellipsis, // Handle long places
                              ),
                            ],
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () async {
                          await canteenfooditemsget(canteen.id);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ViewfoodScreen(
                                canteen: canteenfooditemsdata,
                              ),
                            ),
                          );
                        },
                        icon: const Icon(Icons.arrow_forward_ios),
                        color: Colors.orangeAccent.shade700, // Icon color matches theme
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
