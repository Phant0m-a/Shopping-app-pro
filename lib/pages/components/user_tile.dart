import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';




class UserTile extends StatelessWidget {
  UserTile({super.key, required this.documentId});

  //doc id
  final documentId;

  //firebase reference
  CollectionReference Users = FirebaseFirestore.instance.collection('Users');

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DocumentSnapshot>(
      future: Users.doc(documentId).get(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          //convert returned snapshot into Map
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return ListTile(
              leading: Text(data['name'].toString() +' '+data['email'].toString() +' '+data['address']),
              // title: Text(allUserData[index].displayName
              //     ? allUserData[index].displayName
              //     : "not set"),
              // trailing: UserTile(documentId: userIds[index]),
              trailing:data['verified'] == true ? Icon(
                Icons.verified,
                color: Colors.blueAccent,
              ) 
              
              : Icon(Icons.verified, color: Colors.grey.shade100,)
              
              );
        } else {
          return const ListTile(
            leading: Text(
              'loading...',
              style: TextStyle(color: Colors.green, fontSize: 16),
            ),
          );
        }
      },
    );
  }
}
