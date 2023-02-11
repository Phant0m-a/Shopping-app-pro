import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'routes/routes.dart';
import 'constants/colors.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // options: const FirebaseOptions(
      //     // apiKey: "AIzaSyDuFpqEGSP2Do-EGTEz1AFlW5H8Ekv4p8c",
      //     // authDomain: "dropshipper-d7f37.firebaseapp.com",
      //     // projectId: "dropshipper-d7f37",
      //     // storageBucket: "dropshipper-d7f37.appspot.com",
      //     // messagingSenderId: "205623720674",
      //     // appId: "1:205623720674:web:722999864083766dff3cbb")
      );
  runApp(
    const DropShipper(),
  );
}

class DropShipper extends StatelessWidget {
  const DropShipper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Palette.myColors,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: MyRoutes.getWelcome(),
      getPages: MyRoutes.appRoutes(),
    );
  }
}
