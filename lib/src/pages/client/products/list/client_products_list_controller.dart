import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ClientsProductsListController extends GetxController {
  void signOut() {
    GetStorage().remove('user');
    // Elimina el historial de pantallas
    Get.offNamedUntil('/', (route) => false);
  }
}
