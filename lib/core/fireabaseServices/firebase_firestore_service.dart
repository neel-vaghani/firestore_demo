// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';

class FireBaseFireStoreService {
  static FirebaseFirestore db = FirebaseFirestore.instance;
  static void getStarted_addData() async {
    // [START get_started_add_data_1]
    // Create a new user with a first and last name
    final user = <String, dynamic>{
      "first": "Abhishek",
      "last": "Patil",
      "born": 2000
    };

    // Add a new document with a generated ID
    db.collection("users").add(user).then((DocumentReference doc) =>
        print('DocumentSnapshot added with ID: ${doc.id}'));
    // [END get_started_add_data_1]
  }
}
