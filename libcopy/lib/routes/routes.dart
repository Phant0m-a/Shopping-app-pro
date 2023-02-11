// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import '../display.dart';
import '../pages/dropshipper/bottom_bar/bottom_bar.dart';
import '../pages/dropshipper/cancel_order/cancel_order.dart';
import '../pages/dropshipper/categories/components/category_screen.dart';
import '../pages/dropshipper/customer_address/customer_address.dart';
import '../pages/dropshipper/order/orders.dart';
import '../pages/dropshipper/order_details/order_details.dart';
import '../pages/dropshipper/products/products.dart';
import '../pages/dropshipper/profile/components/add_bank_details.dart';
import '../pages/dropshipper/profile/components/bank_account.dart';
import '../pages/dropshipper/profile/components/business_details.dart';
import '../pages/dropshipper/profile/components/mera_profit.dart';
import '../pages/dropshipper/profile/components/shared_item.dart';
import '../pages/dropshipper/shop/shop.dart';
import '../pages/login/phone.dart';
import '../pages/login/verify.dart';
import '../pages/supplier/bottom_bar/bottom_bar.dart';
import '../pages/welcome/welcome.dart';

class MyRoutes {
  ///views routes***************
  static String display = '/disply';
  static String bottomBar = '/bottom-bar';
  static String welcome = '/welcome';
  static String phone = '/phone';
  static String verify = '/verify';
  static String categoryScreen = '/category-screen';
  static String cancelOrder = '/cancel-order';
  static String customerAddress = '/customer-address';
  static String order = '/order';
  static String orderDetails = '/order-details';
  static String products = '/products';
  static String shopScreen = '/shop-screen';
  static String meraProfit = '/mera-profit';
  static String businessDetails = '/business-details';
  static String bankAccount = '/bank-account';
  static String addBankDetails = '/add-bank-details';
  static String sharedItem = '/sharedItem';

  //++++++++++++++++supplier +++++++++++++++

  static String supplierBottomBar = '/supplier-bottom-bar';

  ///***********get routes******************************************
  static String getDisplayRoute() => display;
  static String getBottomBar() => bottomBar;
  static String getWelcome() => welcome;
  static String getPhone() => phone;
  static String getVerify() => verify;
  static String getCategoryScreen() => categoryScreen;
  static String getCancelOrder() => cancelOrder;
  static String getCustomerAddress() => customerAddress;
  static String getOrder() => order;
  static String getOrderDetails() => orderDetails;
  static String getProducts() => products;
  static String getShopScreen() => shopScreen;
  static String getMeraProfit() => meraProfit;
  static String getBusinessDetails() => businessDetails;
  static String getBankAccount() => bankAccount;
  static String getAddBankDetails() => addBankDetails;
  static String getSharedItem() => sharedItem;

  //+++++++++++++++++++Supplier++++++++++++++

  static String getSupplierBottomBar() => supplierBottomBar;

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
          page: () => DropshipperBottomBar(),
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
          name: categoryScreen,
          page: () => CategoryScreen(),
          middlewares: [MyMiddleware()],
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(milliseconds: 500),
        ),


        GetPage(
          name: cancelOrder,
          page: () => CancelOrder(),
          middlewares: [MyMiddleware()],
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(milliseconds: 500),
        ),

        GetPage(
          name: customerAddress,
          page: () => CustomerAddress(),
          middlewares: [MyMiddleware()],
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(milliseconds: 500),
        ),

        GetPage(
          name: order,
          page: () => Order(),
          middlewares: [MyMiddleware()],
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(milliseconds: 500),
        ),

        GetPage(
          name: orderDetails,
          page: () => OrderDetails(),
          middlewares: [MyMiddleware()],
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(milliseconds: 500),
        ),

        GetPage(
          name: products,
          page: () => Products(),
          middlewares: [MyMiddleware()],
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(milliseconds: 500),
        ),

        GetPage(
          name: shopScreen,
          page: () => ShopScreen(),
          middlewares: [MyMiddleware()],
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(milliseconds: 500),
        ),

        GetPage(
          name: meraProfit,
          page: () => MeraProfit(),
          middlewares: [MyMiddleware()],
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(milliseconds: 500),
        ),

        GetPage(
          name: businessDetails,
          page: () => BusinessDetails(),
          middlewares: [MyMiddleware()],
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(milliseconds: 500),
        ),
        GetPage(
          name: bankAccount,
          page: () => BankAccount(),
          middlewares: [MyMiddleware()],
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(milliseconds: 500),
        ),

        GetPage(
          name: addBankDetails,
          page: () => AddBankDetails(),
          middlewares: [MyMiddleware()],
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(milliseconds: 500),
        ),

        GetPage(
          name: sharedItem,
          page: () => SharedItem(),
          middlewares: [MyMiddleware()],
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(milliseconds: 500),
        ),


    ///+++++++++++++++++++++++++Supplier ++++++++++++++++++++++

    GetPage(
      name: supplierBottomBar,
      page: () => SupplierBottomBar(),
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
