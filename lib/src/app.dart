import 'dart:convert';

import 'package:firstproject/src/models/ImageModel.dart';
import 'package:firstproject/src/widgets/Image_list.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

class App extends StatefulWidget{
  @override
  createState() {
    // TODO: implement createState
    return appState();
  }
}

class appState extends State<App>{
  int counter =0;
  List<ImageModel> images = new List();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text("App"),
        ),
        floatingActionButton: FloatingActionButton(onPressed: getImage,
          child: Icon(Icons.add),
          tooltip: "I am tool",),
      body: ImageList(images),
      ),

    );
  }

  getImage() async {
    counter+=1;
    var response = await get("http://jsonplaceholder.typicode.com/photos/$counter");
    print(response.body);
    var imageModel = ImageModel.parseJson(json.decode(response.body));
    setState(() {
      images.add(imageModel);
    });
  }
}