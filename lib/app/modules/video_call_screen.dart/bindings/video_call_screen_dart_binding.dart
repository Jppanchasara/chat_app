import 'package:get/get.dart';

import '../controllers/video_call_screen_dart_controller.dart';

class VideoCallScreenDartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VideoCallScreenDartController>(
      () => VideoCallScreenDartController(),
    );
  }
}
