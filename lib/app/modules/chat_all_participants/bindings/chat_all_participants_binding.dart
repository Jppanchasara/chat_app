import 'package:get/get.dart';

import '../controllers/chat_all_participants_controller.dart';

class ChatAllParticipantsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatAllParticipantsController>(
      () => ChatAllParticipantsController(),
    );
  }
}
