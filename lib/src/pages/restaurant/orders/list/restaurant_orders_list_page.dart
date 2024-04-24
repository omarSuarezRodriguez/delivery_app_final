import 'package:delivery_app_final/src/pages/restaurant/orders/list/restaurant_orders_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RestaurantOrdersListPage extends StatelessWidget {
  RestaurantOrdersListController controlador =
      Get.put(RestaurantOrdersListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Restaurant Orders List'),
      ),
    );
  }
}
