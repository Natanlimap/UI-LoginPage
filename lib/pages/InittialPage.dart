import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:typicons_flutter/typicons_flutter.dart';
>>>>>>> 68902885e4f25a14a17155c4196337bd92d879e7
import 'package:uiloginpage/class/formWidgetClass.dart';

class InitialWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
            color: Colors.white,
            child: new Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: new ListView( //A LIST VIEW FOR THE FORMFIELD DONT OVERFLOW PIXELS
                children: <Widget>[
                  new Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: new Center(
                      child: new Text("Your logo here",style: _logoTextStyle(),), //IF YOU PREFFER CHANGE THIS BY A IMAGE
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 100), child:  _bodyMain(),), //CREATING A SPACE BETWEEN LOGO AND BODY
                ],
              ),
            )
          )
    );
  }
}

<<<<<<< HEAD

Widget _bodyMain(){ //the body content of this page
  FormClass formWidgets = FormClass();
  TextEditingController _loginController = TextEditingController(); //login controller
  TextEditingController _passwordController = TextEditingController(); //password controller
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch, //Streching all widgets of the column
    children: <Widget>[
      formWidgets.userNameField(_loginController), //formfieldtext from formWidgetClass for user put the login
      new Padding(padding: EdgeInsets.only(bottom: 10)),//space between forms fields
      formWidgets.passwordField(_passwordController), //formfieldtext from formWidgetClass for user put the password
      new Padding(padding: EdgeInsets.only(bottom: 10)),//space between forms field and button
      formWidgets.loginButton(), //button
      new Padding(padding: EdgeInsets.only(bottom: 60)),
      new Padding(padding: EdgeInsets.only(bottom: 20), child: new Text("or login with", style: _orLoginWithStyle(), textAlign: TextAlign.center,),),
      _socialMediaButtonCollection(), //login with social media options
    ],
  );
}


Widget _socialMediaButtonCollection(){ //Widget thats return the
  return new Column(
    children: <Widget>[
      _socialMediaButton(Colors.redAccent, "Continue with google", "google-icon.png"), //google in sign button
      new Padding(padding: EdgeInsets.only(top: 10)),
      _socialMediaButton(Colors.indigoAccent, "Continue with facebook", "facebook-icon.png"), //facebook sign in button
    ],
  );
}

=======
>>>>>>> 68902885e4f25a14a17155c4196337bd92d879e7
Widget _socialMediaButton(Color color, String text, String image){ //button used for sign in with social media
  return new RaisedButton(
    onPressed: (){
      //connect api
    },
    color: color,
    elevation: 10,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    padding: EdgeInsets.only(top: 25, bottom: 25),
    child: new Row(
      mainAxisAlignment: MainAxisAlignment.center, //adjusting the text for center of the button.
      children: <Widget>[
        new Text(text, style: TextStyle(color: Colors.white, fontSize: 15), textAlign: TextAlign.center,),
      ],
    ),
  );
}

<<<<<<< HEAD

TextStyle _orLoginWithStyle(){ //"or login with" style
  return TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 16);
}


TextStyle _logoTextStyle(){ //Logo text style
  return TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black45);
=======
TextStyle _logoTextStyle(){ //Unecessary
  return TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black45);
}

Widget _socialMediaButtonCollection(){ //Widget thats return the
  return new Column(
    children: <Widget>[
      _socialMediaButton(Colors.redAccent, "Continue with google", "google-icon.png"),
      new Padding(padding: EdgeInsets.only(top: 10)),
      _socialMediaButton(Colors.indigoAccent, "Continue with facebook", "facebook-icon.png"),
    ],
  );
}

Widget _bodyMain(){ //the content from main widget
  FormClass formWidgets = FormClass();
  TextEditingController _loginController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,

    children: <Widget>[
      formWidgets.userNameField(_loginController), //formfieldtext from formWidgetClass for user put the login
      new Padding(padding: EdgeInsets.only(bottom: 10)),//space between forms fields
      formWidgets.passwordField(_passwordController), //formfieldtext from formWidgetClass for user put the password
      new Padding(padding: EdgeInsets.only(bottom: 10)),//space between forms fields and button
      formWidgets.loginButton(), //button
      new Padding(padding: EdgeInsets.only(bottom: 60)),
      new Padding(padding: EdgeInsets.only(bottom: 20), child: new Text("or login with", style: _orLoginWithStyle(), textAlign: TextAlign.center,),),
      _socialMediaButtonCollection(), //login with social media options
    ],
  );
}
TextStyle _orLoginWithStyle(){
  return TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 16);
>>>>>>> 68902885e4f25a14a17155c4196337bd92d879e7
}