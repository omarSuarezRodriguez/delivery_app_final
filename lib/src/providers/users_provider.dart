import 'package:delivery_app_final/src/environment/environment.dart';
import 'package:delivery_app_final/src/models/response_api.dart';
import 'package:delivery_app_final/src/models/user.dart';
import 'package:get/get.dart';

class UsersProvider extends GetConnect {
  String url = Environment.API_URL + 'api/users';

  Future<Response> create(User user) async {
    // Va a esperar hasta que el servidor nos retorne la respuesta
    Response response = await post('$url/create', user.toJson(),
        headers: {'Content-Type': 'application/json'});

    // Cuando ya el proceso se realiza, se ejecuta el resto del codigo
    return response;
  }

  Future<ResponseApi> login(String email, String password) async {
    // Va a esperar hasta que el servidor nos retorne la respuesta
    Response response = await post(
        '$url/login', {'email': email, 'password': password},
        headers: {'Content-Type': 'application/json'});

    if (response.body == null) {
      Get.snackbar('Error', 'No se pudo ejecutar la peticion');
      return ResponseApi();
    }

    ResponseApi responseApi = ResponseApi.fromJson(response.body);

    // Cuando ya el proceso se realiza, se ejecuta el resto del codigo
    return responseApi;
  }
}
