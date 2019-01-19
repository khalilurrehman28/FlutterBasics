import 'package:firstproject/src/models/ImageModel.dart';
import 'package:flutter/material.dart';

class ImageList extends StatelessWidget{
  final List<ImageModel> images;

  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   // ImageModel

    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context,int index){
       return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(ImageModel img){
    return Container(
      margin: EdgeInsets.only(bottom: 0.0,left: 10.0,right: 10.0,top: 10.0),
      child: Column(children: <Widget>[Image.network(img.url),Text(img.title)],),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(10.0)
      ),
    );
  }
}