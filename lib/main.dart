import 'package:delivery_app_final/src/pages/login/login_page.dart';
import 'package:delivery_app_final/src/pages/register/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Nombre de la App, el ícono se muestra en el menú de aplicaciones del dispositivo
      title: 'Delivery App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/register', page: () => RegisterPage()),
        ],

      theme: ThemeData(
        primaryColor: Colors.amber,
        useMaterial3: false,
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Colors.amber,
          onPrimary: Colors.white,
          secondary: Colors.amberAccent,
          onSecondary: Colors.black,
          error: Colors.red,
          onError: Colors.white,
          surface: Colors.white,
          onSurface: Colors.black,
        ),
      ),

      // theme: ThemeData(
      //   useMaterial3: false,
      //   colorScheme:
      //       ColorScheme.fromSeed(
      //         seedColor: Colors.red,
      //         brightness: Brightness.light,
      //       ).copyWith(
      //         primary: Colors.amber,
      //         secondary: Colors.amberAccent,
      //         surface: Colors.white,
      //         onPrimary: Colors.white,
      //         onSurface: Colors.black,
      //       ),
      // ),
      navigatorKey: Get.key,
    );
  }
}



// import 'package:delivery_app_final/src/pages/login/login_page.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// void main() {
//   runApp(const MyApp());
// }


// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       // Nombre de la App, el ícono se muestra en el menú de aplicaciones del dispositivo
//       title: 'Delivery App',
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/',
//       getPages: [
//         GetPage(name: '/', page: () => LoginPage())
//       ],
//       theme: ThemeData(
//         primaryColor: Colors.amber,
//         colorScheme: ColorScheme(
//           primary: Colors.amber,
//           secondary: Colors.amberAccent,
//           brightness: Brightness.light,
//           //onBackground: Colors.grey,
//           onPrimary: Colors.grey,
//           surface: Colors.grey,
//           onSurface: Colors.grey,
//           error: Colors.grey,
//           onError: Colors.grey,
//           onSecondary: Colors.grey,
//           //background: Colors.grey,

//         ),
//       ),
//       navigatorKey: Get.key,


//     );
//   }
// }