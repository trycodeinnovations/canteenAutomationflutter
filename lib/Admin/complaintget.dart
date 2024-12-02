import 'package:canteenautomation/complaintmodel/complaintmodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future complaintsget() async {
  try {
    // String? email= FirebaseAuth.instance.currentUser!.email;
    var update = FirebaseFirestore.instance.collection('complaints');
    QuerySnapshot querySnapshot = await update.get();
    print(querySnapshot.docs);
    print('object');
    complaintsdata = querySnapshot.docs.map((doc) {
      return Complaintmodel(
          id: doc.id ,
          canteenname: doc['canteenname']?? '',
          complaint: doc['complaint']?? '',
          userid: doc['userid']?? '',
          // canteenid: doc['canteenid']?? '',

          );
      
    }).toList();
    // canteendata=employeedata;
    print(complaintsdata[0].complaint);
  } catch (e) {
    print(e);
  }
}

List<Complaintmodel> complaintsdata = [];