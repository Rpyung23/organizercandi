import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:organizercandi/utils/color.dart';

import '../../utils/dimens.dart';

class DetalleParticipante extends StatefulWidget {
  DetalleParticipante({Key? key}) : super(key: key);

  @override
  State<DetalleParticipante> createState() => _DetalleParticipanteState();
}

class _DetalleParticipanteState extends State<DetalleParticipante> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalle del participante"),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
        margin: EdgeInsets.all(marginBig),
        child: ListView(children: [
          Text(
            "Juan José Velazquez ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: textBigBig),
          ),
          SizedBox(
            height: marginBig,
          ),
          Text("Tipo de ingreso",
              style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: textMedium,
                  color: black_05)),
          SizedBox(
            height: marginSmall,
          ),
          Text("Vip",
              style:
                  TextStyle(fontWeight: FontWeight.w400, fontSize: textMedium)),
          SizedBox(
            height: marginBig,
          ),
          Text("Pedido n°",
              style:
                  TextStyle(fontWeight: FontWeight.w400, fontSize: textMedium)),
          SizedBox(
            height: marginMedium,
          ),
          Text(
            "234242332DFSFDSFJW321",
            style: TextStyle(color: HexColor("3559E3")),
          ),
          SizedBox(
            height: marginBig,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Metodo de entrega",
                    style: TextStyle(fontSize: textMedium, color: black_05),
                  ),
                  SizedBox(
                    height: marginMedium,
                  ),
                  Text(
                    "Ticket Online",
                    style: TextStyle(fontSize: textMediumEntrada),
                  )
                ],
              )),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fecha",
                    style: TextStyle(fontSize: textMedium, color: black_05),
                  ),
                  SizedBox(
                    height: marginMedium,
                  ),
                  Text(
                    "Vie,Feb 21,2021 7:00AM GTM+",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: textMediumEntrada),
                  )
                ],
              ))
            ],
          ),
          SizedBox(
            height: marginBig,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            child: Stack(
              children: [
                Align(
                  child: Image.asset(
                    "assets/qr.png",
                    width: MediaQuery.of(context).size.height * 0.30,
                  ),
                ),
                Align(
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: HexColor("#46CAA2"),
                    child: Icon(
                      Icons.check,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          Center(
            child: Text(
              "234242332DFSFDSFJW321",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                "Log de actividades",
                style: TextStyle(color: HexColor("#3559E3")),
              ),
              trailing: Container(
                  padding: EdgeInsets.all(marginSmall),
                  child: Text(
                    "10",
                    style: TextStyle(color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ))),
        ]),
      ),
      bottomNavigationBar: Container(
        color: primary,
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: primary,
                minimumSize: Size.fromHeight(altoButtom)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Iconsax.shield_tick5),
                SizedBox(
                  width: marginMedium,
                ),
                Text(
                  "Check-ins",
                  style: TextStyle(fontSize: textMediumEntrada),
                )
              ],
            )),
      ),
    );
  }
}
