import 'dart:convert';
import 'package:http/http.dart' as http;

class Commons {
  // static const baseURL = "https://api.chucknorris.io/";

  static dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = jsonDecode(response.body.toString());

      //     print(responseJson);
      //     return responseJson;case 500:
      //
      //   default:
      //     throw FetchDataException(
      //         'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
      // }
    }
  }
}
