import 'package:get/get.dart';

import '../controllers/pickwarrior_controller.dart';

class PickwarriorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PickwarriorController>(
      () => PickwarriorController(),
    );
  }
}
