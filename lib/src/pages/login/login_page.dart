import 'package:delivery_app_final/src/pages/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginController controlador = Get.put(LoginController());

  ScrollController _scrollController = ScrollController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50.0,
        child: _textDontHaveAccount(),
      ),
      // Posicionar elementos uno encima del otro
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Stack(
          children: [
            _backgroundCover(context),
            _boxForm(context),

            // Posicionar elementos uno debajo del otro (vertical)
            Column(
              children: [
                _imageCover(),
                _textAppName(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _backgroundCover(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.45,
      color: Colors.amber,
    );
  }

  Widget _textAppName() {
    return Text(
      'Delivery MySQL',
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  Widget _boxForm(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.50,
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.38,
        left: 50.0,
        right: 50.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black54,
            blurRadius: 15.0,
            offset: Offset(0, 0.75),
          ),
        ],
      ),
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            _textYourInfo(),
            _textFieldEmail(),
            _textFieldPassword(),
            _buttonLogin(),
          ],
        ),
      ),
    );
  }

  Widget _textFieldEmail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
        controller: controlador.emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Correo Electronico',
          prefixIcon: Icon(Icons.email),
          prefixIconColor: MaterialStateColor.resolveWith(
            (states) => states.contains(MaterialState.focused)
                ? Colors.amber
                : Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget _textFieldPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
        controller: controlador.passwordController,
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Contraseña',
          prefixIcon: Icon(Icons.lock),
          prefixIconColor: MaterialStateColor.resolveWith(
            (states) => states.contains(MaterialState.focused)
                ? Colors.amber
                : Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget _buttonLogin() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      child: ElevatedButton(
        onPressed: () => controlador.login(),
        // onPressed: () {
        //   controlador.login();
        // },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.blue,
          padding: EdgeInsets.symmetric(vertical: 15.0),
        ),
        child: Text(
          'Login',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _textYourInfo() {
    return Container(
      margin: EdgeInsets.only(top: 30.0, bottom: 30.0),
      child: Text(
        'Ingresa esta informacion',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _textDontHaveAccount() {
    // Permite ubicar elementos uno al lado del otro (horizontal)
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'No tienes cuenta?',
          style: TextStyle(
            color: Colors.black,
            fontSize: 17.0,
          ),
        ),
        SizedBox(width: 7.0),
        GestureDetector(
          onTap: () => controlador.goToRegisterPage(),
          child: Text(
            'Registrate Aqui',
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              fontSize: 17.0,
            ),
          ),
        ),
      ],
    );
  }

  // Metodo privado, es un metodo porque va dentro de una clase
  // Es privado porque lleva guion al piso al comienzo
  // Los metodos privados solo van a ser accesibles desde la misma clase
  // El metodo pulico nos permite acceder desde otras clases
  Widget _imageCover() {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
        alignment: Alignment.center,
        child: Image.asset(
          'assets/img/delivery.png',
          width: 130,
          height: 130,
        ),
      ),
    );
  }
}
