// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rest_api/my_database_page.dart';

class AddUser extends StatefulWidget {
  dynamic map;

  AddUser({super.key, this.map});

  @override
  State<AddUser> createState() => _AddUserState();

  GlobalKey<FormState> formkey = GlobalKey();
  var un = TextEditingController(text: '');
  var uc = TextEditingController(text: '');
  var ui = TextEditingController(text: '');
  var dob = TextEditingController(text: '');
  var id = TextEditingController(text: '');
}

class _AddUserState extends State<AddUser> {
  @override
  void initState() {
    super.initState();
    widget.un.text = widget.map == null ? '' : widget.map['UserName'];
    // widget.uc.text = widget.map == null ? '' : widget.map['UserCity'];
    // // widget.uc.text ??=widget.map['UserName'];
    // // widget.uc.text ??=widget.map['UserCity'];
    // widget.ui.text = widget.map == null ? '' : widget.map['UserImage'];
    // widget.dob.text = widget.map == null ? '' : widget.map['BirthDate'];
    widget.id.text = widget.map == null ? '' : widget.map['UserID'].toString();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(Icons.arrow_back_rounded)),
          ),
          body: SizedBox(
            // height: 400,
            child: SingleChildScrollView(
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: TextFormField(
                        controller: widget.un,
                        decoration: InputDecoration(
                            label: const Text('User Name'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: const BorderSide(
                                    color: Colors.blue, style: BorderStyle.solid))),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: TextFormField(
                        controller: widget.uc,
                        decoration: InputDecoration(
                            label: const Text('User City'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: const BorderSide(
                                    color: Colors.blue, style: BorderStyle.solid))),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: TextFormField(
                        controller: widget.ui,
                        decoration: InputDecoration(
                            label: const Text('User Image'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: const BorderSide(
                                    color: Colors.blue, style: BorderStyle.solid))),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: TextFormField(
                        controller: widget.dob,
                        decoration: InputDecoration(
                            label: const Text('BirthDate'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: const BorderSide(
                                    color: Colors.blue, style: BorderStyle.solid))),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: TextButton  (
                          style: ButtonStyle(
                              side: MaterialStateProperty.all(
                                  const BorderSide(width: 1, color: Colors.blue)),
                              fixedSize: const MaterialStatePropertyAll(Size(100, 50)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5))),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white30),
                              padding:
                                  MaterialStateProperty.all(const EdgeInsets.all(10))),
                          onPressed: ()  async {
                            // print("${widget.ui.text}${widget.un.text}");
                            if (widget.map == null) {
                              Map<String,dynamic> map = {};
                              map['UserName'] = widget.un.text;
                               await MyDataBase().addUser(map).then((value) => Navigator.of(context).pop(map));
                            } else {
                              // print("widget.id.text:::::::::::::::::::::::::::::::::::::::::${widget.id.text}");
                              Map<String,dynamic> map = {};

                              map['UserID'] = widget.id.text;
                              map['UserName'] = widget.un.text;
                              await MyDataBase().editUser(map).then((value) {
                                Navigator.of(context).pop(map);
                              });
                            }
                          },
                          child: const Text(
                            "Submit",
                            style: TextStyle(fontSize: 20),
                          )),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }

  Future<dynamic> addUser() async {
    var map = {};
    map['UserName'] = widget.un.text;
    map['UserCity'] = widget.uc.text;
    map['UserImage'] = widget.ui.text;
    map['BirthDate'] = widget.dob.text;
    var res1 =await  http.post(
        Uri.parse(
            "https://63f4ec623f99f5855dba7621.mockapi.io/flutterUser/userlist"),
        body: map);
    return res1;
  }

  Future<dynamic> editUser() async {
    var map = {};
    map['UserName'] = widget.un.text;
    map['UserCity'] = widget.uc.text;
    map['UserImage'] = widget.ui.text;
    map['BirthDate'] = widget.dob.text;
    map["id"] = widget.id.text;
      var res1 = await http.put(
          Uri.parse(
              "https://63f4ec623f99f5855dba7621.mockapi.io/flutterUser/userlist/${widget.map['id']}"),
          body: map);
      return res1;


  }
}
