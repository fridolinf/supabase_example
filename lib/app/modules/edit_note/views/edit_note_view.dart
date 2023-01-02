import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_example/app/data/models/notes_model.dart';
import 'package:supabase_example/app/modules/home/controllers/home_controller.dart';

import '../controllers/edit_note_controller.dart';

class EditNoteView extends GetView<EditNoteController> {
  Notes note = Get.arguments;
  HomeController homeC = Get.find();
  @override
  Widget build(BuildContext context) {
    controller.titleC.text = note.title!;
    controller.descC.text = note.description!;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Edit Note'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextField(
              controller: controller.titleC,
              decoration: const InputDecoration(
                labelText: "Title",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            TextField(
              controller: controller.descC,
              decoration: const InputDecoration(
                labelText: "Description",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(() => ElevatedButton(
                onPressed: () async {
                  if (controller.isLoading.isFalse) {
                    bool res = await controller.editNote(note.id!);
                    if (res == true) {
                      await homeC.getAllNotes();
                      Get.back();
                    }
                    controller.isLoading.value = false;
                  }
                },
                child: Text(
                    controller.isLoading.isFalse ? "Edit note" : "Loading...")))
          ],
        ));
  }
}
