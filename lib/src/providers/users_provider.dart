import 'package:delivery_app_final/src/enviroment/environment.dart';
import 'package:delivery_app_final/src/models/response_api.dart';
import 'package:delivery_app_final/src/models/user.dart';
import 'package:get/get.dart';

// Nos va a permitir realizar las peticiones Http de manera sencilla
class UsersProvider extends GetConnect {


  String url = Environment.API_URL + 'api/users';


  // Crear usuario
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


  //
  Future<ResponseApi> login(String email, String password) async {
    Response response = await post(
      '$url/login', 
      {
        'email': email,
        'password': password
      }, 
      headers: {
        'Content-Type': 'application/json'
      }
    ); // Va a esperar hasta que el servidor nos retorne la respuesta


    if (response.body == null) {
      Get.snackbar('Error', 'No se pudo ejecutar la petición');
      return ResponseApi();
    }

    ResponseApi responseApi = ResponseApi.fromJson(response.body);

    return responseApi;
  }


}
