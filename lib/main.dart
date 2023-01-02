import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:supabase_example/app/controllers/auth_controller.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await dotenv.load(fileName: ".env"); //path to your .env file);
  await dotenv.load();

  String supaUri = dotenv.get('SUPABASE_URL');
  String supaAnon = dotenv.get('SUPABASE_ANONKEY');
  // print(foo.toString() + "123");
  // print(foo.runtimeType.toString() + "123");
  Supabase supaProvider = await Supabase.initialize(
    url: supaUri,
    anonKey: supaAnon,
  );

  final authC = Get.put(AuthController(), permanent: true);
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: supaProvider.client.auth.currentUser == null
          ? Routes.LOGIN
          : Routes.HOME, //cek login current user
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}
