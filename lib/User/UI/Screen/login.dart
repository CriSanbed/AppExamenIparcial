import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_examen/User/UI/Screen/colorFondo.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        ColorFondo(),
        Column(
          children: [
            //WIDGET PARA EL ENCABEZADO
            Container(
              alignment: Alignment.center,
              width: 300.0,
              height: 25.0,
              child: Text('Login....!!!!',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontFamily: "Akayas", fontSize: 20, color: Colors.black)),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              width: 250.0,
              height: 20.0,
              child: Text('Sign Up..',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontFamily: "Akayas", fontSize: 15, color: Colors.black)),
            ),
            //WIDGET PARA LA IMAGEN DE INICIO
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Image(
                    fit: BoxFit.contain,
                    image: AssetImage("assets/img/login.png"),
                  ),
                ),
              ],
            ),

            //WIDGET PARA FORMULARIO DE INGRESO
            Container(
              width: 300,
              child: Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      maxLength: 60,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelStyle: new TextStyle(color: Colors.black),
                        hintStyle: new TextStyle(color: Colors.black38),
                        hintText: 'Ingrese su Correo..',
                        labelText: 'Enter your email address',
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      maxLength: 30,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelStyle: new TextStyle(color: Colors.black),
                        hintStyle: new TextStyle(color: Colors.black38),
                        hintText: 'Ingrese su clave..',
                        labelText: 'Password',
                      ),
                    ),
                    Container(
                      // alignment: Alignment.bottomRight,
                      width: 400.00,
                      height: 20.00,
                      child: Text('''Forgot password''',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 13, color: Colors.black)),
                    ),
                    Stack(
                      children: [
                        MaterialButton(
                          minWidth: 300.0,
                          height: 50.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          onPressed: () {},
                          color: Colors.white12,
                          child: Text('Log In',
                              style: TextStyle(color: Colors.black)),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 60),
                      width: 400.00,
                      height: 40.00,
                      child: Text('Login with',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: IconButton(
                            icon: const Icon(
                                CupertinoIcons.f_cursive_circle_fill),
                            iconSize: 35,
                            color: Colors.black,
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          child: IconButton(
                            icon: const Icon(CupertinoIcons.globe),
                            iconSize: 35,
                            color: Colors.black,
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          child: IconButton(
                            icon:
                                const Icon(CupertinoIcons.arrow_turn_down_left),
                            iconSize: 35,
                            color: Colors.black,
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          child: IconButton(
                            icon: const Icon(CupertinoIcons.envelope_fill),
                            iconSize: 35,
                            color: Colors.black,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: new RichText(
                        text: new TextSpan(
                          children: [
                            new TextSpan(
                              text: 'Terms of Service',
                              style: new TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
}
