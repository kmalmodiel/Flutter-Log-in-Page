import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Login Page',
        home: LoginPage(),
        theme: ThemeData(primaryColor: Colors.red),
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => home()
        });
  }
}

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  TextEditingController validEmail = new TextEditingController();
  TextEditingController validPassword = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Hi There!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              new Image(
                image: new AssetImage("assets/peachcat.gif"),
                height: 300,
                width: 900,
              ),
              new Form(
                child: new Theme(
                  data: new ThemeData(
                      brightness: Brightness.light,
                      primaryColor: Colors.black,
                      inputDecorationTheme: new InputDecorationTheme(
                          labelStyle: new TextStyle(
                              color: Colors.black, fontSize: 10.0))),
                  child: new Container(
                    padding: const EdgeInsets.all(40.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new TextFormField(
                          controller: validEmail,
                          decoration: new InputDecoration(
                              hintText: "Email Address",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        new TextFormField(
                          controller: validPassword,
                          decoration: new InputDecoration(
                              hintText: "Password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                        ),
                        new MaterialButton(
                          color: Colors.red,
                          textColor: Colors.black,
                          child: new Text("Login"),
                          onPressed: () => {
                            if (validEmail.text == "cictapps@wvsu.edu.ph" &&
                                validPassword.text == "toor")
                              {Navigator.pushNamed(context, "/home")}
                          },
                          splashColor: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
