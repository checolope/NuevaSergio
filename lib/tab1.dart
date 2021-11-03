import 'package:flutter/material.dart';
//import 'package:carousel/carousel.dart';

class Tab1 extends StatelessWidget {
  
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Carousel',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Carousel Demo'),
        ),
        body: new Stack (
           children: <Widget>[
             new PageView(
               children: [

               ],
             ),
             new ListView(
             children: [
                 new Text('Text on top of the carousel'),
               ],
             ),
           ]
        ),
      ),
    );
  }
}



