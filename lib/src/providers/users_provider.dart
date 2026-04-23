import 'package:delivery_app_final/src/enviroment/environment.dart';
import 'package:delivery_app_final/src/models/user.dart';
import 'package:get/get.dart';

// Nos va a permitir realizar las peticiones Http de manera sencilla
class UsersProvider extends GetConnect {


  String url = Environment.API_URL + 'api/users';


  Future<Response> create(User user) async {
    Response response = await post(
      '$url/create', 
      user.toJson(), 
      headers: {
        'Content-Type': 'application/json'
      }
    ); // Va a esperar hasta que el servidor nos retorne la respuesta

    return response;
  }


}
