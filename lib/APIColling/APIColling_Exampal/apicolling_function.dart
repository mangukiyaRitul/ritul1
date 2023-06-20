
import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart'as http ;
import 'package:ritul/APIColling/APIColling_Exampal/Apicolling_factory.dart';

 Future<Aplicollingmodel?> apicolexampal () async {
  
  final uri =Uri.parse('https://jsonplaceholder.typicode.com/todos/1');

  Response response = await http.get(uri);

  try{

    if(response.statusCode == 200)
      {
        final body = jsonDecode(response.body);
        final Aplicollingmodel result = Aplicollingmodel.fromJson(body);
        print("data ${body}");
        print("result ${result}");
        return result;
      }
    else
      {
        return null;
      }
  }catch(e){

    print("Catch ${e}");
    return null;
  }
}
