import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddUser extends StatefulWidget {
  dynamic map;

  AddUser({this.map});

  @override
  State<AddUser> createState() => _AddUserState();

  GlobalKey<FormState> formkey = GlobalKey();
  var un = new TextEditingController(text: '');
  var uc = new TextEditingController(text: '');
  var ui = new TextEditingController(text: '');
  var dob = new TextEditingController(text: '');
  var id = new TextEditingController(text: '');
}

class _AddUserState extends State<AddUser> {
  void initState() {
    widget.un.text = widget.map == null ? '' : widget.map['UserName'];
    widget.uc.text = widget.map == null ? '' : widget.map['UserCity'];
    // widget.uc.text ??=widget.map['UserName'];
    // widget.uc.text ??=widget.map['UserCity'];
    widget.ui.text = widget.map == null ? '' : widget.map['UserImage'];
    widget.dob.text = widget.map == null ? '' : widget.map['BirthDate'];
    widget.id.text = widget.map == null ? '' : widget.map['id'];
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
                child: Icon(Icons.arrow_back_rounded)),
          ),
          body: Container(
            height: 400,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(
                    controller: widget.un,
                    decoration: InputDecoration(
                        label: Text('User Name'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Colors.blue, style: BorderStyle.solid))),
                  ),
                  TextFormField(
                    controller: widget.uc,
                    decoration: InputDecoration(
                        label: Text('User City'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Colors.blue, style: BorderStyle.solid))),
                  ),
                  TextFormField(
                    controller: widget.ui,
                    decoration: InputDecoration(
                        label: Text('User Image'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Colors.blue, style: BorderStyle.solid))),
                  ),
                  TextFormField(
                    controller: widget.dob,
                    decoration: InputDecoration(
                        label: Text('BirthDate'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Colors.blue, style: BorderStyle.solid))),
                  ),
                  TextFormField(
                    controller: widget.id,
                    decoration: InputDecoration(
                        label: Text('ID'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Colors.blue, style: BorderStyle.solid))),
                  ),
                  TextButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              BorderSide(width: 1, color: Colors.blue)),
                          fixedSize: MaterialStatePropertyAll(Size(100, 50)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white30),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(10))),
                      onPressed: ()  async {
                        if (widget.map == null) {
                           await addUser().then((value) => Navigator.of(context).pop(true));
                        } else {
                          await editUser().then((value) => Navigator.of(context).pop(true));
                        }
                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(fontSize: 20),
                      ))
                ],
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
              "https://63f4ec623f99f5855dba7621.mockapi.io/flutterUser/userlist/" +
                  widget.map['id'].toString()),
          body: map);
      return res1;


  }
}
