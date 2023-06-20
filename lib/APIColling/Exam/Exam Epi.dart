import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart'as http ;
import 'package:ritul/APIColling/Loding.dart';

class ExamApi4 extends StatelessWidget {
  const ExamApi4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(),
      body: FutureBuilder(
        future: ExamAPICol(),
        builder: (context, AsyncSnapshot<Map<String,dynamic>?> snapshot) {
        if(snapshot.hasData)
          {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.teal.shade200,
                ),

                width: double.maxFinite,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [

                    Text("msg ${snapshot.data!["msg"]}"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.teal.shade300,
                        ),

                        child:  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("data"),
                              Text("data :${snapshot.data!["data"]["user"]["id"]}"),
                              Text("createdAt: ${snapshot.data!["data"]["user"]["createdAt"]}"),
                              Text("updatedAt: ${snapshot.data!["data"]["user"]["updatedAt"]}"),
                              Text("first_name: ${snapshot.data!["data"]["user"]["first_name"]}"),
                              Text("last_name :${snapshot.data!["data"]["user"]["last_name"]}"),
                              Text("full_name: ${snapshot.data!["data"]["user"]["full_name"]}"),
                              Text("full_name_reverse: ${snapshot.data!["data"]["user"]["full_name_reverse"]}"),
                              Text("mobile_number: ${snapshot.data!["data"]["user"]["mobile_number"]}"),
                              Text("email: ${snapshot.data!["data"]["user"]["email"]}"),
                              Text("master_garage_id :${snapshot.data!["data"]["user"]["master_garage_id"]}"),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.teal.shade500,
                                  ),

                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                        children: [
                                      Text("MasterGarage"),
                                      Text("id :${snapshot.data!["data"]["user"]["MasterGarage"]["id"]}"),
                                          // Text(snapshot.data!["data"]["user"]["id"].toString()),
                                      Text("createdAt: ${snapshot.data!["data"]["user"]["MasterGarage"]["createdAt"]}"),
                                      Text("updatedAt: ${snapshot.data!["data"]["user"]["MasterGarage"]["updatedAt"]}"),

                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              color: Colors.teal.shade700,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Garage"),
                                                    Text("id :${snapshot.data!["data"]["user"]["MasterGarage"]["Garage"][0]["id"]}"),
                                                    Text("createdAt: ${snapshot.data!["data"]["user"]["MasterGarage"]["Garage"][0]["createdAt"]}"),
                                                    Text("updatedAt: ${snapshot.data!["data"]["user"]["MasterGarage"]["Garage"][0]["updatedAt"]}"),
                                                    Text("name :${snapshot.data!["data"]["user"]["MasterGarage"]["Garage"][0]["name"]}"),
                                                    Text("owner_first_name :${snapshot.data!["data"]["user"]["MasterGarage"]["Garage"][0]["owner_first_name"]}"),
                                                    Text("mobile_number :${snapshot.data!["data"]["user"]["MasterGarage"]["Garage"][0]["mobile_number"]}"),
                                                    Text("email: ${snapshot.data!["data"]["user"]["MasterGarage"]["Garage"][0]["email"]}"),
                                                    Text("logo_url :${snapshot.data!["data"]["user"]["MasterGarage"]["Garage"][0]["logo_url"]}"),
                                                    Text("shop_no :${snapshot.data!["data"]["user"]["MasterGarage"]["Garage"][0]["shop_no"]}"),
                                                    Text("is_gst_applicable: ${snapshot.data!["data"]["user"]["MasterGarage"]["Garage"][0]["is_gst_applicable"]}"),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                    ]),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            );
          }
        else if (snapshot.hasError)
          {
            return Text("Srror ${snapshot.hasError}");
          }
        else
          {
            return Roding();
          }
      },)
    );
  }
}



Future<Map<String,dynamic>?> ExamAPICol()
async {
  final Uri uri = Uri.parse("https://garage.logispire.in/api/auth/login");

  try{
    Response response = await http.post(uri,body: {"mobile_number":"7405399675"});

    if(response.statusCode == 200)
      {
        print("respons  ${response.body}");
        final result =  jsonDecode(response.body);


        return result ;
      } else
      {
        return null;
      }
  }catch(e){
    Text("Error :  ${e}");
  }



}
