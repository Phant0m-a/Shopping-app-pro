
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'routes/routes.dart';
import 'constants/colors.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
