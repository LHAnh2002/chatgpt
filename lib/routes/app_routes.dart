

import 'package:get/get.dart';

import '../chatgpt/controller/chatgpt_controller.dart';
import '../chatgpt/controller/zoom_drawer_controller.dart';
import '../chatgpt/view/chat_gpt_view.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(
          name: "/",
          page: () => const ChatGptView(),
          binding: BindingsBuilder(
            () {
              Get.put<ChatgptController>(ChatgptController());
              Get.put<MyZoomDrawerController>(MyZoomDrawerController());
            },
          ),
        ),
      ];
}
