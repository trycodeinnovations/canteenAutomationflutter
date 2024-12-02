import 'package:canteenautomation/Canteen/Additems.dart';
import 'package:canteenautomation/Canteen/Order%20placed.dart';
import 'package:canteenautomation/Canteen/StaffViewprofile.dart';
import 'package:flutter/material.dart';

ValueNotifier<int> current = ValueNotifier(0);

class Canteenhome extends StatelessWidget {
  Canteenhome({super.key});
  List<Widget> screen = [AdditemsScreen(),const vieworders(),const StaffViewProfile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: current,
        builder: (context, value, child) {
          return BottomNavigationBar(
            items:const [ BottomNavigationBarItem(icon: Icon(Icons.menu_book),label:"Menu"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label:"Orders"),
            BottomNavigationBarItem(icon: Icon(Icons.home),label:"Profile"),

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