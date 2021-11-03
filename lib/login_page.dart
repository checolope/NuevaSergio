import 'package:flutter/material.dart';
import 'home.dart';
class LoginPage extends StatefulWidget{

  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
    
}
class  _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
   final logo = Hero(
     tag: 'hero', 
     child: CircleAvatar(
       backgroundColor: Colors.red,
       radius: 50.0,
       child: Image.asset('assets/images/image2.png'),
     )
     );
      final email = TextFormField(
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        initialValue: '',
        decoration: InputDecoration(
          hintText: 'Email',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
        ),
      );
      final password = TextFormField(
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        initialValue: '',
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
        ),
      );
      final loginButton = Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          onPressed: () {
            Route route = MaterialPageRoute(builder: (context) => HomeWidget());
            Navigator.push(context, route);
          },
          padding: EdgeInsets.all(12),
          color: Colors.lightBlue,
          child: Text('Login', style: TextStyle(color: Colors.white, fontSize:17.0)),
          ),
        );

        final forgotLabel = FlatButton(
          child: Text(
            'Olvidaste tu contraseña?',
            style: TextStyle(color: Colors.orange, fontSize: 15),
          ),
          onPressed: (){
            //Route route = MaterialPageRoute(builder: (context) => HomeWidget());
              //navigator.push(context, route)
          },
          );
          final sergio = Hero(
          tag: 'hero', 
          child: CircleAvatar(
            backgroundColor: Colors.red,
            radius: 50.0,
            child: Image.asset('assets/images/facebook.png'),
          )
          );
          return Scaffold(
              backgroundColor: Colors.white,
              body: Center(
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.only(left: 24.0,right: 24.0),
                  children: <Widget>[
                    logo,
                    SizedBox(height:50.0),
                    email,
                    SizedBox(height: 15.0),
                    password,
                    SizedBox(height: 24.0),
                    loginButton,
                    forgotLabel
                  ],
                ),
              ),
          );
  } 

}