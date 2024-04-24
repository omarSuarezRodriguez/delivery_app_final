import 'package:delivery_app_final/src/models/user.dart';
import 'package:delivery_app_final/src/pages/client/products/list/client_products_list_page.dart';
import 'package:delivery_app_final/src/pages/delivery/orders/list/delivery_orders_list_page.dart';
import 'package:delivery_app_final/src/pages/home/home_page.dart';
import 'package:delivery_app_final/src/pages/login/login_page.dart';
import 'package:delivery_app_final/src/pages/restaurant/orders/list/restaurant_orders_list_page.dart';
import 'package:delivery_app_final/src/pages/roles/roles_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'src/pages/register/register_page.dart';

User userSession = User.fromJson(GetStorage().read('user') ?? {});

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('Usuario Id: ${userSession.id}');
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery Udemy',
      initialRoute: userSession.id != null
          ? userSession.roles!.length > 1
              ? '/roles'
              : '/client/products/list'
          : '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/register', page: () => RegisterPage()),
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(name: '/roles', page: () => RolesPage()),
        GetPage(
            name: '/restaurant/orders/list',
            page: () => RestaurantOrdersListPage()),
        GetPage(
            name: '/delivery/orders/list',
            page: () => DeliveryOrdersListPage()),
        GetPage(
            name: '/client/products/list',
            page: () => ClientProductsListPage()),
      ],
      theme: ThemeData(
        primaryColor: Colors.amber,
        colorScheme: ColorScheme(
          primary: Colors.amber,
          secondary: Colors.amberAccent,
          brightness: Brightness.light,
          background: Colors.white,
          onPrimary: Colors.amber,
          surface: Colors.amber,
          onSurface: Colors.black87,
          error: Colors.grey,
          onError: Colors.grey,
          onSecondary: Colors.grey,
          onBackground: Colors.grey,
        ),
      ),
      navigatorKey: Get.key,
    );
  }
}
