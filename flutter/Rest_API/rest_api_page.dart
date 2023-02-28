import 'dart:convert';
// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rest_api/add_user_page.dart';

class RestAPI extends StatefulWidget {
  const RestAPI({super.key});

  @override
  State<RestAPI> createState() => _RestAPIState();
}

class _RestAPIState extends State<RestAPI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('List'),
          actions: [
            InkWell(
              onTap: () async{
                 await Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return  AddUser();
                    },
                  )).then((value) => setState(() {

                  },));

                print("Ontap is clikced");
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.add),
              ),
            ),
          ],
        ),
        body: FutureBuilder(
          future: getDetails(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Text(snapshot.data![index]['id'].toString()),
                        Text(snapshot.data![index]['UserName'].toString()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                  print("SetState in rest api");

                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return AddUser(
                                            map: snapshot.data![index]);
                                      },
                                    ),
                                  ).then((value) {
                                    setState(() {

                                    });
                                  },);
                              },
                              child: Icon(Icons.edit),
                            ),
                            InkWell(
                                onTap: () async{
                                 await deleteDetail(snapshot.data![index]['id']).then((value) {
                                   setState(() {

                                   });
                                 },);
                                },
                                child: Icon(Icons.delete_rounded))
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}

Future<List> getDetails() async {
  var res1 = await http.get(
    Uri.parse(
        "https://63f4ec623f99f5855dba7621.mockapi.io/flutterUser/userlist"),
  );
  return jsonDecode(res1.body);
}

Future<dynamic> deleteDetail(id) async {
  var res1 = await http.delete(
    Uri.parse(
        "https://63f4ec623f99f5855dba7621.mockapi.io/flutterUser/userlist/" +
            id),
  );
  return res1;
}
