import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:organizercandi/utils/color.dart';

import '../utils/dimens.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            drawer: _drawer(),
            body: Stack(
              children: [
                Positioned(
                  top: -(MediaQuery.of(context).size.width * 0.2),
                  left: -(MediaQuery.of(context).size.width * 0.15),
                  child: _circle(),
                ),
                Align(
                  child: _body(),
                )
              ],
            )));
  }

  _body() {
    return Container(
      margin: const EdgeInsets.only(right: marginBig, left: marginBig),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/dashboard");
            },
            child: Stack(alignment: Alignment.center, children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.facebook,
                  size: 25,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Continuar con Facebook",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ]),
            style: OutlinedButton.styleFrom(
                minimumSize: Size.fromHeight(altoButtom),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(ButtonRadiusBorder)),
                side: BorderSide(color: Colors.black, width: 1)),
          ),
          const SizedBox(
            height: marginBig,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/dashboard");
            },
            child: Stack(alignment: Alignment.center, children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  "assets/icons/google.png",
                  fit: BoxFit.fill,
                  width: 25,
                  height: 25,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Continuar con Google",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ]),
            style: OutlinedButton.styleFrom(
                minimumSize: Size.fromHeight(altoButtom),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(ButtonRadiusBorder)),
                side: BorderSide(color: Colors.black, width: 1)),
          ),
          const SizedBox(
            height: marginBig,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/dashboard");
            },
            child: Stack(alignment: Alignment.center, children: const [
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Iconsax.user,
                  color: Colors.black,
                  size: 25,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Continuar con tu correo",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ]),
            style: OutlinedButton.styleFrom(
                minimumSize: Size.fromHeight(altoButtom),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(ButtonRadiusBorder)),
                side: BorderSide(color: Colors.black, width: 1)),
          ),
        ],
      ),
    );
  }

  _circle() {
    return Container(
      height: MediaQuery.of(context).size.width * 0.87,
      width: MediaQuery.of(context).size.width * 0.87,
      padding: EdgeInsets.only(left: (MediaQuery.of(context).size.width * 0.2)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "Bienvenido.",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: marginBig,
          ),
          Text("Registrate o inicia sesión para crear y gestionar eventos.",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: textMedium,
                  fontWeight: FontWeight.w700))
        ],
      ),
      decoration: BoxDecoration(
          color: primary,
          borderRadius: BorderRadius.all(
              Radius.circular(MediaQuery.of(context).size.width * 0.9))),
    );
  }

  _drawer() {
    return Drawer(
        child: ListView(children: [
      DrawerHeader(
          margin: EdgeInsets.only(bottom: 0),
          decoration: BoxDecoration(color: Colors.black),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 35,
                child: Image.asset(
                  "assets/icons/canditicket.png",
                  width: 37,
                  height: 37,
                ),
              ),
              SizedBox(
                width: marginMedium,
              ),
              Text(
                "Candi",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: textBigBig,
                    fontWeight: FontWeight.bold),
              ),
              Text("Ticket",
                  style: TextStyle(
                      color: primary,
                      fontSize: textBigBig,
                      fontWeight: FontWeight.bold))
            ],
          )),
      ListTile(
        leading: Icon(
          Iconsax.setting_2,
          color: Colors.black87,
        ),
        title: Text(
          "Config. de dispositivo",
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
      ),
      ListTile(
        leading: Icon(
          Iconsax.user,
          color: Colors.black87,
        ),
        title: Text(
          "Iniciar sesión",
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
      )
    ]));
  }
}
