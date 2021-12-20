/* Internal wrapper that adds relevant tokens to the HTTP request cycle */
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io' show Platform;


class Rest {
   static dynamic get(String path) async {
    final response = await http.get(Uri.parse(
        'https://hamon-interviewapi.herokuapp.com/$path/?api_key=61bd1'));
    var data = json.decode(response.body);
    return data;
  }
  static dynamic post(String path, Map<String, dynamic> params) async {
    final response = await http.post(Uri.parse('https://hamon-interviewapi.herokuapp.com/$path/?api_key=61bd1'),
        body: params);

    var data = json.decode(response.body);
    return data;
  }
}
