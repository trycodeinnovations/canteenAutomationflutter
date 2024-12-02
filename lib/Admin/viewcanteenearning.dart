import 'package:canteenautomation/Admin/totalearnings.dart';
import 'package:canteenautomation/Canteen/orderplacedget.dart';
import 'package:canteenautomation/Customer/Viewcanteenget.dart';
import 'package:flutter/material.dart';

class ViewCanteenearng extends StatelessWidget {
  
  const ViewCanteenearng({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: 
        Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: canteendata.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),
                  border: Border.all(color: Colors.black12),color: const Color.fromARGB(255, 243, 191, 232)
                ),
                child: 
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      // child: CircleAvatar(radius: 25,),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(canteendata[index].name),
                            Text(canteendata[index].place)
                          ],
                        ),
                      ),
                    ),
                    IconButton(onPressed: 
                    () async{
                   await   ordwerGetForTotal(canteendata[index].name);
                      
                      // await canteenfooditemsget(canteendata[index].id);
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>const totalEarnings(),));
                      
                    }, icon: const Icon(Icons.arrow_forward_ios))
                  ],
                ),
              ),
            );
            
            
          },
        ),
     ),
);
}
}