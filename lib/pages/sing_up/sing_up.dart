import 'dart:ui';
import 'package:escola_gabriela/pages/home/home.dart';
import 'package:escola_gabriela/pages/login/login.dart';
import 'package:escola_gabriela/shared/models/user_model.dart';
import 'package:escola_gabriela/pages/sing_up/sing_up.dart';
import 'package:escola_gabriela/values/Custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class singUp extends StatefulWidget {
  const singUp({Key? key}) : super(key: key);

  @override
  _singUpState createState() => _singUpState();
}

TextEditingController _nameInputController = TextEditingController();
TextEditingController _mailInputController = TextEditingController();
TextEditingController _passwordInputController = TextEditingController();
TextEditingController _confirmInputController = TextEditingController();

bool showPassword = null!;
final _formKey = GlobalKey<FormState>();

Color topCenter = Colors.green;
Color bottomCenter = Colors.greenAccent;

class _singUpState extends State<singUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [topCenter, bottomCenter])),
            child: Column(children: <Widget>[
              Padding(padding: EdgeInsets.all(32)),
              SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                              controller: _nameInputController,
                              autofocus: true,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                labelText: "Nome Completo",
                                labelStyle: TextStyle(color: Colors.white),
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                              )),
                          TextFormField(
                              controller: _mailInputController,
                              autofocus: true,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                labelText: "E-mail",
                                labelStyle: TextStyle(color: Colors.white),
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.white,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                              )),
                          TextFormField(
                              controller: _passwordInputController,
                              obscureText: true,
                              autofocus: true,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                labelText: "Senha",
                                labelStyle: TextStyle(color: Colors.white),
                                prefixIcon: Icon(
                                  Icons.vpn_key,
                                  color: Colors.white,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                              )),
                          TextFormField(
                              obscureText: true,
                              autofocus: true,
                              style: TextStyle(color: Colors.white),
                              // ignore: prefer_const_constructors
                              decoration: InputDecoration(
                                labelText: "Confirme a Senha",
                                labelStyle:
                                    const TextStyle(color: Colors.white),
                                prefixIcon: Icon(
                                  Icons.vpn_key,
                                  color: Colors.white,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(40),
                            child: ElevatedButton(
                                onPressed: () {
                                  _doSingUp();
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => loginpage(),
                                      ));
                                },
                                child: Text(
                                  "Cadastrar",
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 16,
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                )),
                          )
                        ],
                      ),
                    ),
                  ]))
            ])));
    // void _doSingnUP() {
    //   User newUser = User(
    //     name: _nameInputController.text,
    //     mail: _mailInputController.text,
    //     password: _passwordInputController.text,
    //     keepOn: true,
    //   );
    //   _saveUser(newUser);
    // }
  }
}

class _doSingUp {}
