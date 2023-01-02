import 'package:get/get.dart';

import '../controllers/edit_note_controller.dart';

class EditNoteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditNoteController>(
      () => EditNoteController(),
    );
  }
}
