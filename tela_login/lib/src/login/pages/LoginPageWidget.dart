import 'package:flutter/material.dart';
import 'package:tela_login/src/login/provider/ProviderPageController.dart';
import 'package:tela_login/src/login/widgets/CicleButton.dart';

class LoginPageWidget extends StatefulWidget {
  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      color: Theme.of(context).accentColor.withOpacity(0.9),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.headset_mic,
            size: 40,
            color: Colors.white,
          ),
          Container(
            height: 25,
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 20),
              children: <TextSpan>[
                TextSpan(text: "Awesome"),
                TextSpan(
                    text: " App",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Container(
            height: 120,
          ),
          CicleButton(
            backGroundColor: Colors.transparent,
            bordeColor: Colors.white,
            label: "SIGN UP",
            onTap: () {
              ProviderPageController.of(context).toPage(0);
            }
          ),
          Container(
            height: 30,
          ),
          CicleButton(
            textColor: Theme.of(context).accentColor,
            backGroundColor: Colors.white,
            label: "LOGIN",
            onTap: () {
              ProviderPageController.of(context).toPage(2);
            },
          ),
        ],
      ),
    );
  }
}
