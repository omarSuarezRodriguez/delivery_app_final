import 'package:delivery_app_final/src/models/user.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  User user = User.fromJson(GetStorage().read('user') ?? {});

  HomeController() {
    print('Usuario de Sesion: ${user.toJson()}');
  }

  void signOut() {
    GetStorage().remove('user');
    // Elimina el historial de pantallas
    Get.offNamedUntil('/', (route) => false);
  }
}
