// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropshop/pages/components/user_tile.dart';
import 'package:dropshop/pages/my_projects/my_projects.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var user;
  var username;
  var currentUserData;
  List allUserData = [];
  late Map<String, dynamic> newData;
  DateTime dateTime = DateTime.now();
  @override
  void initState() {
    user = FirebaseAuth.instance.currentUser;

    username = FirebaseAuth.instance.currentUser?.displayName == Null
        ? user.email
        : FirebaseAuth.instance.currentUser?.displayName;

    print("Welcome $username,   It's ${dateTime.toIso8601String()}");
    super.initState();
  }

  //** Home page
  //      Welcome + $username && Quote of the day
  //      Current Date and Time!
  // */

// 15 feb 2023
//**
//  1.show user name of user {display name}
//  2.upadate table to display user info or maybe use list tile to display ...
//   //update profile updateProfile(displayName: name);
//  3. get info of only current user only

// */

//**
//18 Feb 2023
// 1. users list on listTile
// 2. display name on drawer
// 3. google sheets api integrated
// 4. ui for todo ap */

//////additional help
/**
 * var collection = FirebaseFirestore.instance.collection('DriverList');
var querySnapshot = await collection.get();
for (var queryDocumentSnapshot in querySnapshot.docs) {
  Map<String, dynamic> data = queryDocumentSnapshot.data();
  var name = data['name'];
  var phone = data['phone'];
} */

  List<String> userIds = [];
  //get user data
  Future getUserData() async {
    print('in get user----------------');
    // var data = await FirebaseFirestore.instance
    //     .collection("Users")
    //     .where("email" == "ahsan@gmail.com")
    //     .get();

    return await FirebaseFirestore.instance
        .collection('Users')
        .get()
        .then((snapshot) => snapshot.docs.forEach((element) {
              print(element.reference.id);
              userIds.add(element.reference.id);
            }));

    // currentUserData = data;
    // print(data);
    // return data;
  }

  Future getAllUserData() async {
    var temp = await FirebaseFirestore.instance
        .collection('Users')
        .get()
        .then((snapshot) => snapshot.docs.forEach((doc) {
              // print(doc.data());
              allUserData.add(doc.data());
            }));

    return temp;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              'lib/assets/p2.png',
                            ),
                            radius: 30,
                          ),
                          SizedBox(width: 4),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                user.email.toString(),
                                style: TextStyle(),
                              ),
                              Text(
                                "$username",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Edit Profile'),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Favourites'),
              ),
              ListTile(
                leading: Icon(Icons.add_box_outlined),
                title: Text('Products'),
              ),
              GestureDetector(
                onTap: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => MyProjects())));
                }),
                child: ListTile(
                  leading: Icon(Icons.personal_injury_outlined),
                  title: Text('My Projects'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.pop(context);
                },
                child: ListTile(
                  leading: Icon(Icons.logout_rounded),
                  title: Text('Log out'),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
            title: Text(
              'DropShop',
              style: TextStyle(letterSpacing: 3.5),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: (() async {}), icon: Icon(Icons.notifications)),
            ]),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  // Center(
                  //   child: Text(user.toString()),
                  // ),
                  SizedBox(height: 25),
                  Divider(thickness: 1),
                  // Container(
                  //   height: 350,
                  //   width: double.infinity,
                  //   child: Center(
                  //     child: FutureBuilder(
                  //         future: getUserData(),
                  //         builder: (context, snapshot) {
                  //           return ListView.builder(
                  //               itemCount: allUserData.length,
                  //               itemBuilder: (context, index) {
                  //                 // if (snapshot.hasData) {
                  //                 return Table(
                  //                     defaultColumnWidth:
                  //                         FixedColumnWidth(120.0),
                  //                     border: TableBorder.all(
                  //                         color: Colors.black,
                  //                         style: BorderStyle.solid,
                  //                         width: 2),
                  //                     children: [
                  //                       TableRow(children: [
                  //                         Column(children: [
                  //                           Text('Name',
                  //                               style:
                  //                                   TextStyle(fontSize: 20.0))
                  //                         ]),
                  //                         Column(children: [
                  //                           Text('Email',
                  //                               style:
                  //                                   TextStyle(fontSize: 20.0))
                  //                         ]),
                  //                         Column(children: [
                  //                           Text('Verified',
                  //                               style:
                  //                                   TextStyle(fontSize: 20.0))
                  //                         ]),
                  //                       ]),
                  //                       TableRow(children: [
                  //                         Column(children: [
                  //                           Text(allUserData[index].toString())
                  //                         ]),
                  //                         Column(children: [Text('Flutter')]),
                  //                         Column(children: [Text('5*')]),
                  //                       ]),
                  //                       // TableRow(children: [
                  //                       //   Column(
                  //                       //       children: [Text('Javatpoint')]),
                  //                       //   Column(children: [Text('MySQL')]),
                  //                       //   Column(children: [Text('5*')]),
                  //                       // ]),
                  //                       // TableRow(children: [
                  //                       //   Column(
                  //                       //       children: [Text('Javatpoint')]),
                  //                       //   Column(children: [Text('ReactJS')]),
                  //                       //   Column(children: [Text('5*')]),
                  //                       // ])
                  //                     ]);
                  //                 // } else {
                  //                 //   return Text('No data found...');
                  //                 // }
                  //               });
                  //         }),
                  //   ),

                  // ),

                  //========================== all user container
                  Container(
                    height: MediaQuery.of(context).size.height - 100,
                    child: FutureBuilder(
                      future: getUserData(),
                      builder: (context, snapshot) {
                        return ListView.builder(
                            itemCount: userIds.length,
                            itemBuilder: (context, index) {
                              return UserTile(documentId: userIds[index]);
                            });
                      },
                    ),
                  ),
                  //-=====================================
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
