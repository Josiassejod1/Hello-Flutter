import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

void main() => runApp(HelloWorld());

class HelloWorld extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Lets Get it",
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text("Kwahi Leonard"),
            ),
            body: MVC2()) //Center
        ); // Material App
  }
}

class HomeWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Center(
      child: new Text(
        "Heyyyyyyyyy",
        style: new TextStyle(fontSize: 24.0),
      ), //TEXT
    );
  }
}

class MVC2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: 20,
      itemBuilder: (context, rowNumber) {
        return Container(
            padding: new EdgeInsets.all(25.0),
            child: new Column(
              children: <Widget>[
                new Image.network("http://dalvin.net/profile.jpg"),
                new Text(
                  "Dalvin Digital Design",
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
                new Divider(color: Colors.blue)
              ],
            ));
      },
    );
  }
}

void parse() async {
  List<String> list;
  var link = "https://secure-hamlet-19722.herokuapp.com/api/v1/characters";
  var res = await http
      .get(Uri.encodeFull(link), headers: {"Accept": "application/json"});
  var data = json.decode(res.body);
  print(data);
}
