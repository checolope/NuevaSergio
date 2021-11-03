import 'package:flutter/material.dart';
import 'package:practica24/Screens/Note_list.dart';
class NoteDetail extends StatefulWidget{
  
  @override
  State<StatefulWidget> createState() {
    return NoteDetailState();
  }
}
class NoteDetailState extends State<NoteDetail>{
  static var _priorities = ['hight', 'Low'];

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle= Theme.of(context).textTheme.title;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 25,
          title: Text('Registrar Nombres'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top:15.0, left:10.0, right: 10.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: DropdownButton(
                items: _priorities.map(
                  (String dropDownStringItem){
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),
              style: textStyle,
              value:  'Low',
              onChanged: (valueSelectedByUser){
                setState(() {
                  debugPrint('User selected $valueSelectedByUser');
                });
              }
              ),  
            ),
            Padding(
              padding: EdgeInsets.only(top:15.0, bottom:15.0),
              child: TextField(
                controller: titleController,
                style: textStyle,
                onChanged: (value) {
                  debugPrint('Something changed in title text Field');
                },
                decoration: InputDecoration(
                  labelText: 'Nonbre de Usuario',
                  labelStyle: textStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  )
                ),
              ),
              ),
              Padding(
              padding: EdgeInsets.only(top:15.0, bottom:15.0),
              child: TextField(
                controller: descriptionController,
                style: textStyle,
                onChanged: (value) {
                  debugPrint('Something changed in description text Field');
                },
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  labelStyle: textStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  )
                ),
              ),
              ),
              Padding(
                padding: EdgeInsets.only(top:15.0, bottom: 15.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text('Guardar',
                      textScaleFactor: 1.5,
                      ),
                      onPressed: (){
                        Route route = MaterialPageRoute(builder: (context) => NoteList());
                        Navigator.push(context, route);
                      },
                      ),
                     ),
                      Container(width:5.0,),

                      Expanded(
                      child: RaisedButton(
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text('Delete',
                      textScaleFactor: 1.5,
                      ),
                      onPressed: (){
                        setState(() {
                          debugPrint("Delete button clicked");
                        });
                      },
                      ),
                     ),
                  ]
                ),
                ),
          ]
        ),
        ),
    );
  }

}