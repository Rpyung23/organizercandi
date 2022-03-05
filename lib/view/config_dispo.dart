import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:organizercandi/utils/color.dart';
import 'package:organizercandi/utils/dimens.dart';

class ConfigDispo extends StatefulWidget {
  ConfigDispo({Key? key}) : super(key: key);

  @override
  State<ConfigDispo> createState() => _ConfigDispoState();
}

class _ConfigDispoState extends State<ConfigDispo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin:
            EdgeInsets.only(right: marginBig, left: marginBig, top: marginBig),
        child: ListView(
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text("Información de asistentes"),
              subtitle: Text(
                  "Pide siempre la información del cliente durante la venta."),
              trailing: Checkbox(
                value: true,
                activeColor: black,
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: marginBig,
            ),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text("Modo nocturno"),
              subtitle: Text("Cambia el tema de la aplicación"),
              trailing: Checkbox(
                value: true,
                activeColor: black,
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: marginBig,
            ),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text("Reproducir sonidos"),
              subtitle:
                  Text("Habilitar sonidos para eventos de interfaz de usuario"),
              trailing: Checkbox(
                value: false,
                activeColor: black,
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: marginBig,
            ),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text("Alertas push"),
              subtitle: Text("Habilitar notificaciones push"),
              trailing: Checkbox(
                value: false,
                activeColor: black,
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: marginBig,
            ),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text("Formas de pagos"),
              subtitle: Text(
                  "Efectivo,Tarjeta de crédito, Paypal, Mercado Pago, TigoMoney"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context).pushNamed("/formas_pago");
              },
            ),
            SizedBox(
              height: marginBig,
            ),
            Text(
              "Acerca de nosotros",
              style: TextStyle(fontSize: textMedium),
            ),
            SizedBox(
              height: marginBig,
            ),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text("Calificanos"),
              subtitle: Text("Calificanos en Google Play"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            SizedBox(
              height: marginBig,
            ),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text("Terminos y condiciones"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: black,
                  radius: 30,
                  child: Image.asset(
                    "assets/icons/canditicket_white.png",
                    height: 25,
                    width: 25,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Candi",
                      style: TextStyle(
                          fontSize: textBig, fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "Ticket",
                      style: TextStyle(
                          color: primary,
                          fontSize: textBig,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                Text("Version 1.04(2234)"),
                SizedBox(
                  height: marginMedium,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
