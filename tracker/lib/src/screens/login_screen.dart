import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen>{
  final formKey = GlobalKey<FormState>();

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 25.0)),
            resetButton(),
            loginButton(),
          ],
        ),
      ) 
    );
  }   
  
  

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Adress',
        hintText: 'example@tracker.com',
      ),
      validator: (String value) {
        if (!value.contains('@')) {
          return 'Please enter a valid email';
        }
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password,',
      ),
      validator: (String value) {
        if (value.length < 4) {
          return 'Password must be at least 4 characters';
        }
      },
    );
  }

Widget resetButton() {
    return RaisedButton(
      child: Text('Reset'),
      color: Colors.lightBlue[300],
      onPressed: () {
        formKey.currentState.reset();
      },
    );
  }


  Widget loginButton() {
    return RaisedButton(
      child: Text('Login'),
      color: Colors.lightBlue[100],
      onPressed: () {
        print(formKey.currentState.validate()); // create a API connection
      },
    );
  }
}

