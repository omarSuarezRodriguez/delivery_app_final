import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        child: _textDontHaveAccount(),
      ),
      body: Stack( // Posicionar elementos uno encima del otro
        children: [
          _backgroundCover(context),
          Column( // Posicionar elementos uno debajo del otro (Vertical)
            children: [
              _imageCover(), 
              _textAppName(),
              ]
          ),
        ],
      ),
    );
  }


  // Texto inferior de la Login Page, para indicar que no tiene cuenta y redirigir a registro
  Widget _textDontHaveAccount() {
    return Row( // Nos permite ubicar elementos uno al lado del otro (Horizontal)
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '¿No tienes cuenta?',
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        SizedBox(width: 7),
        Text(
          'Registrate aquí',
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
      ],
    );
  }



  // Color superior fondo de la Login Page
  Widget _backgroundCover(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.4,
      color: Colors.amber,
    );
  }


  // Título de Login Page
  Widget _textAppName() {
    return Text(
      'Delivery MySQL',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),);
  }

  // Imagen superior principal de la Login Page
  Widget _imageCover() {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 20, bottom: 15),
        alignment: Alignment.center,
        child: Image.asset('assets/img/delivery.png', width: 130, height: 130),
      ),
    );
  }
}
