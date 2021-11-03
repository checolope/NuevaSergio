import 'package:flutter/material.dart';

class Materia extends MaterialPageRoute{
  Materia():super (builder:(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('pagina inicial'),
      ),
      body: ListTile(
        title: Text('matria: fisica'),
      ),
    );
  });
}