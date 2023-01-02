import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Register'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            const SizedBox(
              height: 10,
            ),
            TextField(
              autocorrect: false,
              controller: controller.nameC,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
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
                  onPressed: () {
                    if (controller.isLoading.isFalse) {
                      controller.signUp();
                    }
                  },
                  child: Text(
                      controller.isLoading.isFalse ? "REGISTER" : "Loading..."),
                )),
          ],
        ));
  }
}
