import 'package:bits/Model/user.dart';
import 'package:bits/service/userservice.dart';
import 'package:flutter/cupertino.dart';

class UserProvider with ChangeNotifier {
  final userService = UserService();

  Stream<List<UserModel>> get users => userService.getUser();
}
