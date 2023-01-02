import 'package:get/get.dart';
import 'package:supabase_example/app/routes/app_pages.dart';
import 'dart:async';

import 'package:supabase_flutter/supabase_flutter.dart';

class AuthController extends GetxController {
  Timer? authTimer;
  SupabaseClient client = Supabase.instance.client;
  Future<void> autoLogout() async {
    if (authTimer != null) {
      authTimer!.cancel();
    }

    authTimer = Timer(const Duration(seconds: 3600), () async {
      await client.auth.signOut();
      Get.offAllNamed(Routes.LOGIN);
    }); // after login will run auto logout after 1 hours
  }

  Future<void> resetTimer() async {
    if (authTimer != null) {
      authTimer!.cancel();
      authTimer = null;
    }
  }
}
