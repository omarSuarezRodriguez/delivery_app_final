import 'package:delivery_app_final/src/models/rol.dart';
import 'package:delivery_app_final/src/pages/roles/roles_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RolesPage extends StatelessWidget {
  RolesController controller = Get.put(RolesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Seleccionar el rol',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Container(
          // margin: EdgeInsets.symmetric(
          //     vertical: MediaQuery.of(context).size.height * 0.2),
          child: ListView(
            shrinkWrap: true, // Para ajustar el contenido al espacio asignado
            children: controller.user.roles != null
                ? controller.user.roles!.map((Rol rol) {
                    return _cardRol(rol);
                  }).toList()
                : [],
          ),
        ),
      ),
    );
  }

  Widget _cardRol(Rol rol) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 4),
          height: 100,
          child: FadeInImage(
            image: NetworkImage(rol.image!),
            fit: BoxFit.contain,
            fadeInDuration: Duration(milliseconds: 50),
            placeholder: AssetImage('assets/img/no-image.png'),
          ),
        ),
        Text(
          rol.name ?? '',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        SizedBox(height: 25),
      ],
    );
  }
}
