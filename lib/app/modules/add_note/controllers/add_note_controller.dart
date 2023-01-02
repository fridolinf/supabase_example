import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AddNoteController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool isHidden = true.obs;
  TextEditingController titleC = TextEditingController();
  TextEditingController descC = TextEditingController();
  SupabaseClient client = Supabase.instance.client;

  Future<bool> addNote() async {
    if (titleC.text.isNotEmpty && descC.text.isNotEmpty) {
      isLoading.value = true;
      List<dynamic> res = await client
          .from("users")
          .select("id")
          .match({"uid": client.auth.currentUser!.id});
      Map<String, dynamic> user = (res).first as Map<String, dynamic>;
      int id = user["id"]; //get and match user id before insert to db
      await client.from("notes").insert({
        "user_id": id, //insert data with user id as foreign key
        "title": titleC.text,
        "description": descC.text,
        "created_at": DateTime.now().toIso8601String(),
      });
      return true;
    } else {
      return false;
    }
  }
}
