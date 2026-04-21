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
          _boxForm(context),
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


  // Caja blanca que contiene el formulario de Login
  Widget _boxForm(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.35, left: 50, right: 50,),
      height: MediaQuery.of(context).size.height  * 0.45,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 15,
            offset:Offset(0, 0.75),
          )
        ]
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _textYourInfo(),
            _textFieldEmail(),
            _textFieldEPassword(),
            _buttonLogin(),
          ],
        ),
      ),
    );
  }

  // TextField Email
  Widget _textFieldEmail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Correo Electrónico',
          prefixIcon: Icon(Icons.email),
        ),
      ),
    );
  }


  // TextField Password
  Widget _textFieldEPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Contraseña',
          prefixIcon: Icon(Icons.lock),
        ),
      ),
    );
  }


  // Botón del Login
  Widget _buttonLogin() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15),
        ),
        child: Text(
          'Login',
          style: TextStyle(
            color: Colors.black
          ),
        )
      ),
    );
  }


  // Texto título de la caja blanca del formulario de Login
  Widget _textYourInfo() {
    return Container(
      margin: EdgeInsets.only(top: 40, bottom: 45),
      child: Text(
        'Ingresa esta información',
        style: TextStyle(
          color: Colors.black,
        ),
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
      height: MediaQuery.of(context).size.height * 0.42,
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
