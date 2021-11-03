import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:practica24/Material.dart';
import 'package:practica24/Screens/Note_detail.dart';
import 'Dispositivo.dart';
import 'login_page.dart';
import 'paginas.dart';

class HomeWidget extends StatelessWidget{
  final String title;
  HomeWidget({Key key, this.title}):super(key: key);//esto es un constructor, 
  @override
  Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      backgroundColor: Colors.green,
      title: Text("Sergio"),
      elevation: 0.15,
      actions: <Widget>[new Icon(Icons.search),
        new Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0)
        ),
        new Icon(Icons.more_vert),
        new Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0)),
        ],
    ),
    body: ListView(
       scrollDirection: Axis.vertical,
       children: <Widget>[
         Center(
           child: Image.asset("assets/images/image4.png", width: 600, height: 400,
           ),
         ),
       ],
     ),
      bottomNavigationBar: BottomNavigationBar(
      backgroundColor:(Colors.green),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          title: Text('Fotos'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          title: Text('Calculator'),
        ),
      ],
    ),
      floatingActionButton: FloatingActionButton.extended(
      onPressed: () {
        Route route = MaterialPageRoute(builder: (context) => NoteDetail() );
        Navigator.push(context, route);
      },
      label: Text('Registrar'),
      icon: Icon(Icons.add),
      backgroundColor: Colors.redAccent,
    ),
    drawer: Drawer(
       child: ListView(
         children: <Widget>[
           UserAccountsDrawerHeader(
             accountName: Text('Sergio Lopez Gomez'),
             accountEmail: Text('sl435870@gmail.com'),
             decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
                Colors.green,
                Colors.green,
               ],
               ),
             ),
           ),
           ListTile(
             leading: Icon(Icons.message),
              title: Text('Pàgina'),
              onTap: ()=>Navigator.of(context).push(Pagina()),
              
           ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Materia'),
              onTap: ()=>Navigator.of(context).push(Materia()),
           ),
           ListTile(
             leading:  Icon(Icons.settings),
             title: Text('Dispositivo'),
             onTap: ()=>Navigator.of(context).push(Dispositivo()),
           ),
           ListTile(
             leading:  Icon(Icons.close),
             title: Text('Cerrar Seciòn'),
             onTap: (){
               Route route = MaterialPageRoute(builder: (context) => LoginPage());
              Navigator.push(context, route);
             },
           ),
         ],
       ),
     ),
    /*body: 
     ListView(
       scrollDirection: Axis.vertical,
       children: <Widget>[
         Center(
           child: Image.asset("assets/images/image4.png", width: 400, height: 400,
           ),
         ),
       ],
     ),*/
  );
  }
}
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Floating Action Button Label'),
    ),
    body: Center(
      child: const Text('Press the button with a label below!'),
    ),
    floatingActionButton: FloatingActionButton.extended(
      onPressed: () {
        // Add your onPressed code here!
      },
      label: Text('Approve'),
      icon: Icon(Icons.thumb_up),
      backgroundColor: Colors.pink,
    ),
  );
}

/*int _selectedIndex = 0;
static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
static const List<Widget> _widgetOptions = <Widget>[
  Text(
    'Index 0: Home',
    style: optionStyle,
  ),
  Text(
     'Index 1: Business',
     style: optionStyle,
  ),
  Text(
     'Index 2: School',
     style: optionStyle,
  ),
];

void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('BottomNavigationBar Sample'),
    ),
    body: Center(
      child: _widgetOptions.elementAt(_selectedIndex),
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          title: Text('Business'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          title: Text('School'),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    ),
  );
}*/