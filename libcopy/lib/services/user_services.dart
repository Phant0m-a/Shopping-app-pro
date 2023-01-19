import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/user_model.dart';

class UserServices {
  String collection = '';
  var fireStore = FirebaseFirestore.instance;

  //create new user

 Future<void> createUserData (Map< String , dynamic> values) async {
   String id = values['id'];
   await fireStore.collection(collection).doc(id).set(values);
 }

 // update user data

  Future<void> updateUserData (Map< String , dynamic> values) async {
    String id = values['id'];
    await fireStore.collection(collection).doc(id).set(values);
  }

  // get user data by user id

  Future<void> getUserById (String id)async {
   await fireStore.collection(collection).doc(id).get().then((doc) {
     if(doc.data() == null){
       return null;
     }

     return UserModel.fromSnapshot(doc);
   });
  }
}