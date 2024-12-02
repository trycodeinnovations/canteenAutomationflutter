

import 'package:canteenautomation/Customer/complaint.dart';
import 'package:canteenautomation/Customer/customerprofile.dart';
import 'package:canteenautomation/Customer/menuitems..dart';
import 'package:canteenautomation/Customer/viewcanteen.dart';
import 'package:canteenautomation/Customer/viewcart.dart';
import 'package:flutter/material.dart';

ValueNotifier<int> current = ValueNotifier(0);

class Customerhome extends StatelessWidget {
 Customerhome ({super.key});
  List<Widget> screen = [const MenuScreen(),const ViewCanteen(),const viewcart(),const Customerprofile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        
        
        IconButton(onPressed: (){
          
          Navigator.push(context, MaterialPageRoute(builder:(context) => ComplaintPage(), ));
        }, icon: const Icon(Icons.shopping_bag)),
        IconButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => const Customerprofile(), ));

        }, icon: const Icon(Icons.person))
      ],),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: current,
        builder: (context, value, child) {
          return BottomNavigationBar(
            items:const [               BottomNavigationBarItem(icon: Icon(Icons.menu_book),label:"Menu"),

              BottomNavigationBarItem(icon: Icon(Icons.menu_book),label:"Canteen"),
            BottomNavigationBarItem(icon: Icon(Icons.home),label:"Cart"),
            // BottomNavigationBarItem(icon: Icon(Icons.home),label:"Orders"),

            ],
            currentIndex: current.value,
            onTap: (value) async
            
            {
             current.value=value;
            },
          );
        },
      ),
      body: ValueListenableBuilder(
        valueListenable: current,
        builder: (BuildContext context, dynamic value, Widget? child) {
          return  screen[current.value]
            
          ;
        },
  ),
  
);
}
}