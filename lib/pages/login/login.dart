import "dart:ui";
import 'package:escola_gabriela/pages/home/home.dart';
import 'package:escola_gabriela/pages/sing_up/sing_up.dart';
import 'package:escola_gabriela/values/Custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  _loginpageState createState() => _loginpageState();
}

bool continueConnected = false;

class _loginpageState extends State<loginpage> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                  colors: [
                    CustomColors().getActivePrimaryButtonColor(),
                    CustomColors().getActiveSecondaryButtonColor()
                  ]),
            ),
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                  Image.asset(
                    "assets/xylophone.png",
                    height: 150,
                    width: 80,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 8)),
                  Text(
                    "Entrar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  Container(
                    child: Form(
                        child: Column(
                      children: <Widget>[
                        TextFormField(
                            autofocus: true,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              labelText: "E-mail",
                              labelStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.white,
                              ),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                            )),
                        TextFormField(
                            autofocus: true,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              labelText: "Senha",
                              labelStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(
                                Icons.vpn_key,
                                color: Colors.white,
                              ),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                            ))
                      ],
                    )),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 10)),
                  GestureDetector(
                    onTap: () {
                      print("FUNCIOnando");
                    },
                    child: Text(
                      "Esqueceu a senha?",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Checkbox(
                          value: this._obscurePassword,
                          onChanged: (bool? newValue) {
                            setState(() {
                              this._obscurePassword = newValue!;
                            });
                          },
                        ),
                        Text(
                          "Mostrar senha",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => home(),
                            ));
                      },
                      child: Text(
                        "LoginPage",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 16,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                      )),
                  Divider(
                    color: Colors.blueGrey,
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => singUp(),
                          ),
                        );
                      },
                      child: Text(
                        "Cadastre-se",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 16,
                        ),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                        Colors.white60,
                      )))
                ]))));
  }
}
