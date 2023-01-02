import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_example/app/controllers/auth_controller.dart';
import 'package:supabase_example/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            TextField(
              autocorrect: false,
              controller: controller.emailC,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(() => TextField(
                  autocorrect: false,
                  controller: controller.passwordC,
                  textInputAction: TextInputAction.done,
                  obscureText: controller.isHidden.value,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () => controller.isHidden.toggle(),
                        icon: controller.isHidden.isTrue
                            ? const Icon(Icons.remove_red_eye)
                            : const Icon(Icons.remove_red_eye_outlined)),
                    labelText: "Password",
                    border: const OutlineInputBorder(),
                  ),
                )),
            const SizedBox(
              height: 30,
            ),
            Obx(() => ElevatedButton(
                  onPressed: () async {
                    if (controller.isLoading.isFalse) {
                      bool? cekAutoLogout = await controller.login();
                      if (cekAutoLogout != null && cekAutoLogout == true) {
                        await authC.autoLogout();
                        Get.offAllNamed(Routes.HOME);
                      }
                    }
                  },
                  child: Text(
                      controller.isLoading.isFalse ? "LOGIN" : "Loading..."),
                )),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () => Get.toNamed(Routes.REGISTER),
                child: const Text("REGISTER"))
          ],
        ));
  }
}
