import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:organizercandi/utils/dimens.dart';

class ItemCheckIns extends StatelessWidget {
  String titulo = "";
  String subtitulo = "";
  bool isverificado = false;

  ItemCheckIns(String t, String s, bool v) {
    this.titulo = t;
    this.subtitulo = s;
    this.isverificado = v;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Flexible(
            child: Container(
          margin: EdgeInsets.only(right: marginBig, left: marginBig),
          width: 5,
          height: 70,
          color: this.isverificado ? HexColor('#46CAA2') : Colors.white,
        )),
        Flexible(
            child: ListTile(
          contentPadding: EdgeInsets.all(0),
          title: Text(this.titulo),
          subtitle: Text(this.subtitulo),
          onTap: () {
            Navigator.of(context).pushNamed("/detalle_participante");
          },
        ))
      ],
    ));
  }
}
