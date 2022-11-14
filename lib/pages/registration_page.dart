import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/common/theme_helper.dart';
import 'package:ui/pages/widgets/header_widget.dart';

class RegistrationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegistrationPageState();
  }
}

class _RegistrationPageState extends State<RegistrationPage> {
  final Key _key = GlobalKey<FormState>();

  get _formKey => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 150,
                child: HeaderWidget(150, false, Icons.person_add_alt_1_rounded),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 50, 25, 10),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          GestureDetector(
                            child: Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        width: 5, color: Colors.white),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 20,
                                        offset: const Offset(5, 5),
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.grey.shade300,
                                    size: 80.0,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(80, 80, 0, 0),
                                  child: Icon(
                                    Icons.add_circle,
                                    color: Colors.grey.shade700,
                                    size: 25.0,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: TextFormField(
                              decoration: ThemeHelper().textInputDecoration(
                                  'First Name', 'Entar your First name'),
                            ),
                            decoration:
                                ThemeHelper().inputBoxDecorationShadow(),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: TextFormField(
                              decoration: ThemeHelper().textInputDecoration(
                                  'Last Name', 'Enter your last name'),
                            ),
                            decoration:
                                ThemeHelper().inputBoxDecorationShadow(),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
