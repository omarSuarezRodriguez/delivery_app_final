import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Stack(
          children: [
            _backgroundCover(context),
            _boxForm(context),
            _imageUser(),
            _buttonBack(),
          ],
        ),
      ),
    );
  }

  Widget _buttonBack() {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(left: 20.0, top: 10.0),
        child: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }

  Widget _backgroundCover(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.43,
      color: Colors.amber,
    );
  }

  Widget _boxForm(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.84,
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.30,
        left: 50.0,
        right: 50.0,
        bottom: 38.0,
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
            _textFieldName(),
            _textFieldLastName(),
            _textFieldPhone(),
            _textFieldPassword(),
            _textFieldConfirmPassword(),
            SizedBox(height: 10.0),
            _buttonRegister(),
          ],
        ),
      ),
    );
  }

  Widget _textFieldEmail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
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

  Widget _textFieldName() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: 'Nombre',
          prefixIcon: Icon(Icons.person),
          prefixIconColor: MaterialStateColor.resolveWith(
            (states) => states.contains(MaterialState.focused)
                ? Colors.amber
                : Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget _textFieldLastName() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: 'Apellido',
          prefixIcon: Icon(Icons.person_outline),
          prefixIconColor: MaterialStateColor.resolveWith(
            (states) => states.contains(MaterialState.focused)
                ? Colors.amber
                : Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget _textFieldPhone() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hintText: 'Telefono',
          prefixIcon: Icon(Icons.phone),
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

  Widget _textFieldConfirmPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Confirmar contraseña',
          prefixIcon: Icon(Icons.lock_outline),
          prefixIconColor: MaterialStateColor.resolveWith(
            (states) => states.contains(MaterialState.focused)
                ? Colors.amber
                : Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget _buttonRegister() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      child: ElevatedButton(
        onPressed: () {
          print('hello');
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.blue,
          padding: EdgeInsets.symmetric(vertical: 15.0),
        ),
        child: Text(
          'Registrarse',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _imageUser() {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 25.0),
        alignment: Alignment.topCenter,
        child: GestureDetector(
          onTap: () {},
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/img/user_profile.png'),
            radius: 50.0,
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _textYourInfo() {
    return Container(
      margin: EdgeInsets.only(top: 28.0, bottom: 25.0),
      child: Text(
        'Ingresa esta informacion',
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
