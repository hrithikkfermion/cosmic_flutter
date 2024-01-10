import 'package:cosmic/model/Users.dart';
import 'package:cosmic/service/apiservice.dart';
import 'package:flutter/material.dart';

class ApiProvider extends ChangeNotifier{
  final service = ApiService();
  bool isLoading = false;
  List<User>? _users = [];
  List<User>?  get users =>_users;
  getAllUsers() async{
    isLoading = true;
    notifyListeners();
    final userList = await service.getUsers();
    _users = userList;
  }
}