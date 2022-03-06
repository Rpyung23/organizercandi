import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:organizercandi/utils/color.dart';
import 'package:organizercandi/utils/dimens.dart';

import '../view/login_register/inicio_login.dart';
import '../view/login_register/inicio_session.dart';
import '../view/login_register/verificar.dart';

class LoginRegister extends StatefulWidget {
  String titleToolbar = "Iniciar sesión o registrarse";
  int page = 0;
  LoginRegister({Key? key}) : super(key: key);

  @override
  State<LoginRegister> createState() => _LoginRegisterState();
}

class _LoginRegisterState extends State<LoginRegister> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: SafeArea(
            child: Scaffold(
          appBar: AppBar(
            backgroundColor: black,
            leading: IconButton(
                onPressed: () {
                  _preview();
                },
                icon: Icon(Icons.arrow_back)),
            title: Text(widget.titleToolbar),
          ),
          body: _getView(),
          bottomNavigationBar: Container(
            padding: EdgeInsets.only(
                right: marginBig, left: marginBig, bottom: marginMedium),
            child: widget.page == 2
                ? TextButton(
                    onPressed: () {},
                    child: Text(
                      "Reenviar enlace",
                      style: TextStyle(color: primary),
                    ))
                : ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: HexColor("#B5B5B5"),
                        elevation: 0,
                        minimumSize: Size.fromHeight(altoButtom)),
                    onPressed: () {
                      setState(() {
                        if (widget.page <= 2) {
                          widget.page = widget.page + 1;
                        }
                      });
                    },
                    child: Text(
                      "Siguiente",
                      style: TextStyle(fontSize: textMediumEntrada),
                    )),
          ),
        )),
        onWillPop: () async {
          _preview();
          return false;
        });
  }

  _preview() {
    if (widget.page <= 0) {
      Navigator.of(context).pop();
    } else {
      setState(() {
        widget.page = widget.page - 1;
      });
    }
  }

  _getView() {
    switch (widget.page) {
      case 0:
        widget.titleToolbar = "Iniciar sesión o registrarse";
        return ViewLogin();
        break;
      case 1:
        widget.titleToolbar = "Iniciar sesión ";
        return ViewInicioLogin();
        break;
      case 2:
        widget.titleToolbar = "Verificar dirección de correo";
        return ViewVerificarDireccion();
        break;
    }
  }
}
