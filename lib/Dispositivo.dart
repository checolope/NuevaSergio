import 'package:flutter/material.dart';
import 'package:practica24/tab1.dart';
import 'package:practica24/tab2.dart';


class Dispositivo extends MaterialPageRoute{
  Dispositivo():super (builder:(BuildContext context){
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Huella Digital"),
            backgroundColor: Colors.grey,
            bottom: TabBar(tabs: <Widget>[
              Tab(icon: Icon(Icons.accessibility),
              text: 'ajuste'),
              Tab(icon: Icon(Icons.accessible),
              text: 'Dispositibo',
              ),
            ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Tab1(), Tab2(),
            ],
          ),
        ),
      )
    );
  });
}