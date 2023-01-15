// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:dropshipper/pages/categories/categories.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../display.dart';
import '../pages/bottom_bar/bottom_bar.dart';
import '../pages/login/phone.dart';
import '../pages/login/verify.dart';
import '../pages/welcome/componets/onboarding.dart';
import '../pages/welcome/welcome.dart';
import '../pages/home/home_page.dart';

class MyRoutes {
  ///views routes***************
  static String display = '/disply';
  static String bottomBar = '/bottom-bar';
  static String welcome = '/welcome';
  static String phone = '/phone';
  static String verify = '/verify';
  static String categories = '/categories';
  static String home = '/home';

  ///***********get routes******************************************
  static String getDisplayRoute() => display;
  static String getBottomBar() => bottomBar;
  static String getWelcome() => welcome;
  static String getPhone() => phone;
  static String getVerify() => verify;
  static String getCategories() => categories;
  static String getHome() => home;

  /// *********************GetPage********************************************
  static List<GetPage> appRoutes() => [
        GetPage(
          name: display,
          page: () => Display(),
          middlewares: [MyMiddleware()],
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(milliseconds: 500),
        ),
        GetPage(
          name: bottomBar,
          page: () => BottomBar(),
          middlewares: [MyMiddleware()],
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(milliseconds: 500),
        ),

        GetPage(
          name: welcome,
          page: () => Welcome(),
          middlewares: [MyMiddleware()],
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(milliseconds: 500),
        ),

        GetPage(
          name: phone,
          page: () => MyPhone(),
          middlewares: [MyMiddleware()],
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(milliseconds: 500),
        ),

        GetPage(
          name: verify,
          page: () => MyVerify(),
          middlewares: [MyMiddleware()],
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(milliseconds: 500),
        ),

        GetPage(
          name: categories,
          page: () => Categories(),
          middlewares: [MyMiddleware()],
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(milliseconds: 500),
        ),

        GetPage(
          name: home,
          page: () => HomePage(),
          middlewares: [MyMiddleware()],
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(milliseconds: 500),
        ),


      ];
}

class MyMiddleware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
}
