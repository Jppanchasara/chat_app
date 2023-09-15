import 'package:get/get.dart';

import '../controllers/chat_my_mentor_controller.dart';

class ChatMyMentorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatMyMentorController>(
      () => ChatMyMentorController(),
    );
  }
}
