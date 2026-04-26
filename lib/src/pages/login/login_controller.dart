import 'package:delivery_app_final/src/models/response_api.dart';
import 'package:delivery_app_final/src/providers/users_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // Provider del user
  UsersProvider usersProvider = UsersProvider();

  // Ir a la página de registro
  void goToRegisterpage() {
    Get.toNamed('/register');
  }

 
  void login() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (isValidForm(email, password)) {

      ResponseApi responseApi = await usersProvider.login(email, password);

      print('Response Api: ${responseApi.toJson()}');

      if (responseApi.success == true) {
        Get.snackbar('Login exitoso', responseApi.message ?? ''); // Si viene nulo, mostramos el texto vació
      }
      else {
        Get.snackbar('Login fallido', responseApi.message ?? '');
      }

      
    }

  }

  // Validación
  bool isValidForm(String email, String password) {

    if (email.isEmpty) {
      Get.snackbar('Formulario no valido', 'Debes ingresar el email');
      return false;
    }

    if (!GetUtils.isEmail(email)) {
      Get.snackbar('Formulario no valido', 'El email no es valido');
      return false;
    }

    if (password.isEmpty) {
      Get.snackbar('Formulario no valido', 'Debes ingresar el password');
      return false;
    }

    return true;

  }



}
