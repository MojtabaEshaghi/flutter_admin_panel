import 'package:get/get.dart';
import 'package:panel_admin/controller/my_drawer_controller.dart';

class MainInjected implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyDrawerController(),fenix: true);
  }
}
