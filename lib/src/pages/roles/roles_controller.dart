import 'package:delivery_app_final/src/models/rol.dart';
import 'package:delivery_app_final/src/models/user.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RolesController extends GetxController {
  User user = User.fromJson(GetStorage().read('user') ?? {});

  void goToPage(Rol rol) {
    Get.offNamedUntil(rol.route ?? '', (route) => false);
  }
}
