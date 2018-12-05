import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen>{
  final formKey = GlobalKey<FormState>();

  Widget build(context) {
    var formReference = Form();
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 25.0)),
            submitButton(),
            Container(margin: EdgeInsets.only(top: 25.0)),
          ],
        ),
      ), 
    );
  }   
  
  

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Adress',
        hintText: 'example@tracker.com',
      ),
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password,',
      ),
    );
  }


  Widget submitButton() {
    return RaisedButton(
      child: Text('Submit'),
      color: Colors.lightBlue[900],
      onPressed: () {},
    );
  }
}

