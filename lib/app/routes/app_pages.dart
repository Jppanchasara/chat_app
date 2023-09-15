import 'package:get/get.dart';

import '../modules/chat_all_participants/bindings/chat_all_participants_binding.dart';
import '../modules/chat_all_participants/views/chat_all_participants_view.dart';
import '../modules/chat_my_mentor/bindings/chat_my_mentor_binding.dart';
import '../modules/chat_my_mentor/views/chat_my_mentor_view.dart';
import '../modules/connect/bindings/connect_binding.dart';
import '../modules/connect/views/connect_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/video_call_screen.dart/bindings/video_call_screen_dart_binding.dart';
import '../modules/video_call_screen.dart/views/video_call_screen_dart_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CONNECT,
      page: () => const ConnectView(),
      binding: ConnectBinding(),
    ),
    GetPage(
      name: _Paths.CHAT_ALL_PARTICIPANTS,
      page: () => const ChatAllParticipantsView(),
      binding: ChatAllParticipantsBinding(),
    ),
    GetPage(
      name: _Paths.CHAT_MY_MENTOR,
      page: () => ChatMyMentorView(),
      binding: ChatMyMentorBinding(),
    ),
    GetPage(
      name: _Paths.VIDEO_CALL_SCREEN_DART,
      page: () => const VideoCallScreenDartView(),
      binding: VideoCallScreenDartBinding(),
    ),
  ];
}
