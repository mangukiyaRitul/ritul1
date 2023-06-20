import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart'as http ;

class Apicolling_3 extends StatefulWidget {
  const Apicolling_3({super.key});

  @override
  State<Apicolling_3> createState() => _Apicolling_3State();
}

class _Apicolling_3State extends State<Apicolling_3> {
  bool test2 = false;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // if(test2)
      //   {
      //     Apicol3();
      //   }
    });
    APICol3();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: FutureBuilder(
          future: APICol3(),
          builder: (context,AsyncSnapshot<Map<String,dynamic>?> snapshot) {
            if(snapshot.hasData)
              {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.teal.shade100,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                        Text('id : ${snapshot.data!["id"]}'),
                        Text('name : ${snapshot.data!["name"]}'),
                        Text('username : ${snapshot.data!["username"]}'),
                        Text('email : ${snapshot.data!["email"]}'),
                        Text('phone : ${snapshot.data!["phone"]}'),
                        Text('website : ${snapshot.data!["websiteS"]}'),
                            SizedBox(height: 20,),
                            Row(

                              children: [
                                Expanded(
                                  child: Container(
                                    decoration:  BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.teal.shade200,
                                    ),

                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Address"),
                                            Text('street : ${snapshot.data!["address"]["street"]}'),
                                            Text('suite : ${snapshot.data!["address"]["suite"]}'),
                                            Text('city : ${snapshot.data!["address"]["city"]}'),
                                            Text('zipcode : ${snapshot.data!["address"]["zipcode"]}'),

                                            Container(
                                              decoration:  BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: Colors.teal.shade500,
                                              ),

                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Container(
                                                  decoration:  BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    color: Colors.teal.shade500,
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Text("geo"),
                                                      Text('lat : ${snapshot.data!["address"]["geo"]["lat"]}'),
                                                      Text('lng : ${snapshot.data!["address"]["geo"]["lng"]}'),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )

                                  ]),
                                    ),),
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Container(
                                    decoration:  BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.teal.shade200,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Container(
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Company'),
                                              Text('name : ${snapshot.data!["company"]["name"]}'),
                                              Text('catchPhrase  : ${snapshot.data!["company"]["catchPhrase"]}'),
                                              Text('bs : ${snapshot.data!["company"]["bs"]}',overflow: TextOverflow.clip),

                                           ]),
                                      ),
                                    ),),
                                ),
                              ],
                            ),
                      ]),
                    ),
                  ),
                );
              }
            else if(snapshot.hasError)
              {
               return Text("Erroe ${snapshot.hasError}");
              }
            else{
              return LinearProgressIndicator();
            }
        },),
      ),
    );
  }
}


Future<Map<String,dynamic>?> APICol3 ()
async {
  bool test = true;
  Map<String,dynamic>? data;
  final Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/users/1");
  try{


    if(test == false)
      {
        return data;
      }
    else
      {
        Response response = await http.get(uri);
        if(response.statusCode==200)
        {
          test = false;
          final result  = jsonDecode(response.body);
          data = result;
          return result;
        }
        else {
          return null;
        }
      }



  }catch(e){
    Text("Erroe ${e}");
  }
}