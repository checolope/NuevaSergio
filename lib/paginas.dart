import 'package:flutter/material.dart';

class Pagina extends MaterialPageRoute{
  Pagina():super (builder:(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('pagina inicial'),
      ),
      body: Center(child: Text('ingresa un textos'),
      ),
    );
  });
}