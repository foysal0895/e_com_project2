

import 'package:get/get.dart';

import '../features/common/ui/controllers/main_bottom_nav_controllers.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(MainBottomNavController());
  }

}