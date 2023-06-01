import 'package:chat_gpt/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'chatgpt/providers/chats_provider.dart';
import 'chatgpt/providers/models_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(390, 844),
      builder: (context, widget) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => ModelsProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => ChatProvider(),
          )
        ],
        child: GetMaterialApp(
          title: "Chat GPT",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(),
          getPages: AppRoutes.routes(),
        ),
      ),
    );
  }
}

