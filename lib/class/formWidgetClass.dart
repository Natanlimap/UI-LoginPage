import 'package:flutter/material.dart';

class FormClass{ //class that contains formfields methods

  Widget userNameField(TextEditingController _loginController){ //TextFormField widget method thats return a form where the user will put the login name
    return new TextField( //Form where the user will input data
      autofocus: true, //initialize the page with this field pressed
      keyboardType: TextInputType.text, //keyboard with as a text type
      controller: _loginController, //controler recovered from where was called
      style: TextStyle(fontSize: 20),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(16, 20, 16, 20), //creating spaces inside the form
          hintText: "Username",
          prefixIcon: new Icon(Icons.person),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          )
      ),
    );
  }
  Widget passwordField(TextEditingController _passwordController){ //TextFormField widget method thats return a form where the user will put the password
    return new TextField( //Form where the user will input data
      autofocus: false, //initialize the page with this field pressed
      keyboardType: TextInputType.text, //keyboard with as a text type
      controller: _passwordController, //controler recovered from where was called
      obscureText: true, //protect the user from showing his password
      style: TextStyle(fontSize: 20),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(16, 20, 16, 20), //creating spaces inside the form
          hintText: "Password",
          prefixIcon: new Icon(Icons.security),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          )
      ),
    );
  }
  Widget loginButton(){ //the button that will auth the user and login
    return new RaisedButton(
        onPressed: (){
          //auth method
          //navigation
        },
        child: new Text("Login", style: TextStyle(color: Colors.white),),
        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
        elevation: 10, //creates a shadow under the button
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(20),
        ),
         color: Colors.blue,
    );
  }
}