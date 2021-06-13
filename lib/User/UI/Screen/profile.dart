import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_examen/User/UI/Widgets/textinput.dart';

class Profile extends StatelessWidget {
  final _controllerEmail = TextEditingController();
  final _controllerUsername = TextEditingController();
  final _controllerPassword = TextEditingController();
  final _controllerConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            //CONTAINER PARA TITULO
            Container(
              height: 40.0,
              margin: EdgeInsets.only(top: 15.0),
              child: Text(
                "Profile..",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
            ),

            //CONTAINER PARA LA IMAGEN
            Container(
              height: 250.0,
              width: 250.0,
              margin: EdgeInsets.only(top: 15.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage("assets/img/camara.png"),
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                shape: BoxShape.rectangle,
              ),
            ),

            //CONTAINER PARA LOS TEXTOS
            Container(
              margin: EdgeInsets.only(top: 15.0),
              child: TextInput(
                  hint: "Email address:",
                  inputType: TextInputType.name,
                  controller: _controllerEmail,
                  maxLineas: 1),
            ), //CONTAINER PARA EL EMAIL
            Container(
              margin: EdgeInsets.only(top: 15.0),
              child: TextInput(
                  hint: "Username:",
                  inputType: TextInputType.text,
                  controller: _controllerUsername,
                  maxLineas: 1),
            ), //CONTAINER PARA EL USERNAME
            Container(
              margin: EdgeInsets.only(top: 15.0),
              child: TextInput(
                  hint: "Password:",
                  inputType: TextInputType.text,
                  controller: _controllerPassword,
                  maxLineas: 1),
            ), //CONTAINER PARA EL PASSWORD
            Container(
              margin: EdgeInsets.only(top: 15.0),
              child: TextInput(
                  hint: "Confirm Password:",
                  inputType: TextInputType.text,
                  controller: _controllerConfirmPassword,
                  maxLineas: 1),
            ), //CONTAINER PARA EL CONFIRM PASSWORD

            //CONTAINER PARA EL BOTON
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Center(
                child: MaterialButton(
                  minWidth: 100.0,
                  height: 40.0,
                  onPressed: () {},
                  color: Colors.white30,
                  child: Text(
                    'Sing Up',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
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
                    icon: const Icon(CupertinoIcons.f_cursive_circle_fill),
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
                    icon: const Icon(CupertinoIcons.arrow_turn_down_left),
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
            )
          ],
        ),
      ),
    );
  }
}
