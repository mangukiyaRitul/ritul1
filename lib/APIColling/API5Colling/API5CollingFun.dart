
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:ritul/APIColling/API5Colling/API5factary.dart';

  Future<List<APIColling5model>?> api4colling ()
async {
 final Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/comments");

 try {
   Response response = await http.get(uri);
   debugPrint("code ${response.statusCode}");
   if ( response.statusCode == 200)
     {
       final body = jsonDecode(response.body);

       final result = List<APIColling5model>.from( body.map((e){ return APIColling5model.fromJson(e);  }) );

       return result;
     }
   else
     {
       return [] ;
     }
 }catch(e){
   print("Catch Error ${e}");
 }
  
}