import 'package:get/get.dart';

import 'package:supabase_example/app/modules/add_note/bindings/add_note_binding.dart';
import 'package:supabase_example/app/modules/add_note/views/add_note_view.dart';
import 'package:supabase_example/app/modules/edit_note/bindings/edit_note_binding.dart';
import 'package:supabase_example/app/modules/edit_note/views/edit_note_view.dart';
import 'package:supabase_example/app/modules/home/bindings/home_binding.dart';
import 'package:supabase_example/app/modules/home/views/home_view.dart';
import 'package:supabase_example/app/modules/login/bindings/login_binding.dart';
import 'package:supabase_example/app/modules/login/views/login_view.dart';
import 'package:supabase_example/app/modules/profile/bindings/profile_binding.dart';
import 'package:supabase_example/app/modules/profile/views/profile_view.dart';
import 'package:supabase_example/app/modules/register/bindings/register_binding.dart';
import 'package:supabase_example/app/modules/register/views/register_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.ADD_NOTE,
      page: () => AddNoteView(),
      binding: AddNoteBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_NOTE,
      page: () => EditNoteView(),
      binding: EditNoteBinding(),
    ),
  ];
}
