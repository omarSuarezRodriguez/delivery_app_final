import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50.0,
        child: _textDontHaveAccount(),
      ),
      // Posicionar elementos uno encima del otro
      body: Stack(
        children: [
          _backgroundCover(context),

          // Posicionar elementos uno debajo del otro (vertical)
          Column(
            children: [
              _imageCover(),
              _textAppName(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _backgroundCover(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.4,
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
        Text(
          'Registrate Aqui',
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
            fontSize: 17.0,
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
        margin: EdgeInsets.only(top: 20.0, bottom: 15.0),
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
