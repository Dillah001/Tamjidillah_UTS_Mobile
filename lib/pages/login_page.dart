import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ui/pages/profile_page.dart';

import '../common/theme_helper.dart';
import 'registration_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State {
  double _headerHeight = 250;

  get _formKey => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _headerHeight,
              child: HeaderWidget(_headerHeight, true,
                  Icons.login_rounded), //let's create a common header widget
            ),
            SafeArea(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                //This will be the login fo
                child: Column(
                  children: [
                    Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Sign in into your account',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 30.0),
                    Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextField(
                              decoration: ThemeHelper().textInputDecoration(
                                  'User Name', 'Enter your user nama'),
                            ),
                            SizedBox(height: 30.0),
                            TextField(
                              obscureText: true,
                              decoration: ThemeHelper().textInputDecoration(
                                  'User Password', 'Enter your user password'),
                            ),
                            SizedBox(height: 15.0),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                              alignment: Alignment.topRight,
                              child: Text('Forget yout password?'),
                            ),
                            Container(
                              decoration:
                                  ThemeHelper().buttonBoxDecoration(context),
                              child: ElevatedButton(
                                style: ThemeHelper.ButtonStyle(),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                  child: Text(
                                    'Sign In'.toUpperCase(),
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                onPressed: () {
                                  //After succesful login we will redicert to profile page. Lets's create profile page now
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ProfilePage()));
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                              //child: Text('Dont\'t have an account? Create'),
                              child: Text.rich(TextSpan(children: [
                                TextSpan(text: "Don\'t have an acount?"),
                                TextSpan(
                                  text: 'Create',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  RegistrationPage()));
                                    },
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).accentColor),
                                ),
                              ])),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  HeaderWidget(double headerHeight, bool bool, IconData login_rounded) {}
}
