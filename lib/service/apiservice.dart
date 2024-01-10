import 'dart:convert';
import 'package:cosmic/model/Users.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<User>?> getUsers() async {
    Uri url = Uri.parse("https://reqres.in/api/users?page=2");
    final response = await http.get(url);
    print("Code is ${response.statusCode}");
    if (response.statusCode == 200){
      final json = jsonDecode(response.body) as List;
      final post = json
          .map((e) => User(
              page: e['page'],
              perPage: e['perPage'],
              total: e['total'],
              totalPages: e['totalPages'],
              data: e['data'],
              support: e['support']))
          .toList();
      return post;
    }
    return [];
  }
}
