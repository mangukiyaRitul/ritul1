import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:ritul/APIColling/API4collingg/Collin4_factoriy.dart';

Future<API4User?> apiColling_4() async {
  
  final Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/todos/1");

  try{
    Response response = await http.get(uri);

    if(response.statusCode== 200)
      {
        final body = jsonDecode(response.body);
        print("body  ${body}");
        final API4User res = API4User.fromJson(body);

        return res;
      }
    else
      {
        return null;
      }

  }catch(e){
    print("Ritul ${e}");
  }
  return null;

}
