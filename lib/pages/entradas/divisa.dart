import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:organizercandi/utils/color.dart';
import 'package:organizercandi/utils/dimens.dart';

import '../../component/item_divisa.dart';
import '../../component/item_pais.dart';

class PaisDivisaEntrada extends StatefulWidget {
  PaisDivisaEntrada({Key? key}) : super(key: key);

  @override
  State<PaisDivisaEntrada> createState() => _PaisDivisaEntradaState();
}

class _PaisDivisaEntradaState extends State<PaisDivisaEntrada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: black,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/pago_gratis");
                },
                icon: Icon(Icons.check))
          ],
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back)),
          bottom: PreferredSize(
            child: Container(
              padding: EdgeInsets.only(
                  right: marginBig, left: marginBig, bottom: marginBig),
              color: black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Configura el país y la divisa de pago del evento.",
                    style:
                        TextStyle(color: Colors.white, fontSize: textBigMedium),
                  ),
                  Image.asset(
                    "assets/icons/credit_card.png",
                    height: alto_ancho_ok - 10,
                    width: alto_ancho_ok - 10,
                  ),
                ],
              ),
              height: MediaQuery.of(context).size.height * 0.30,
              width: double.infinity,
            ),
            preferredSize: Size(
                double.infinity, MediaQuery.of(context).size.height * 0.30),
          )),
      body: _body(),
      bottomNavigationBar: Container(
          margin: EdgeInsets.only(right: marginBig, left: marginBig),
          child: Text(
            "Puedes editar la información de pago en configuración del evento. Esta información no se puede editar una vez se realice un pedido en el evento.",
            textAlign: TextAlign.justify,
            style: TextStyle(color: black_05, fontSize: textSmallSmall),
          )),
    );
  }

  _body() {
    return Container(
      margin: EdgeInsets.all(marginBig),
      child: ListView(
        children: [
          TextFormField(
            initialValue: 'Argentina',
            showCursor: false,
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
              _showAlertPaises();
            },
            decoration: InputDecoration(
              icon: Icon(
                Icons.language,
                color: black,
              ),
              labelText: 'Pais',
              labelStyle: TextStyle(
                color: black,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: black),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: black),
              ),
            ),
          ),
          SizedBox(
            height: marginMedium,
          ),
          TextFormField(
            showCursor: false,
            initialValue: 'peso Argentino \$',
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
              _showAlertDivisas();
            },
            decoration: InputDecoration(
              icon: Icon(
                Icons.money,
                color: black,
              ),
              labelText: 'Divisa',
              labelStyle: TextStyle(
                color: black,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: black),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: black),
              ),
            ),
          ),
          SizedBox(
            height: marginMedium,
          ),
          TextFormField(
            cursorColor: black,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              icon: Image.asset(
                "assets/icons/mp.png",
                height: 25,
                width: 25,
              ),
              hintText: 'Direccion de correo electrónico de mercado pago',
              labelText: 'Mercado Pago',
              helperText:
                  'Para procesar pesos argentinos en Argentina, debes usar una cuenta de mercado pago.',
              helperMaxLines: 3,
              labelStyle: TextStyle(
                color: black,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: black),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: black),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _showAlertPaises() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("País"),
            content: ListView(
              children: [
                ItemPais("Argentina"),
                ItemPais("Paraguay"),
                ItemPais("Chile"),
                ItemPais("Brazil"),
                ItemPais("Colombia"),
                ItemPais("Ecuador"),
                ItemPais("Estados Unidos "),
              ],
            ),
          );
        });
  }

  _showAlertDivisas() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Divisas"),
            content: ListView(
              children: [
                ItemDivisa("Guaranies"),
                ItemDivisa("Pesos argentinos \$AR"),
                ItemDivisa("Dolar estadounidence \$US"),
                ItemDivisa("Pesos chilenos \$CH"),
                ItemDivisa("Pesos colombianos \$CL"),
                ItemDivisa("Pesos ecuatorianos \$ECU"),
                ItemDivisa("Reales BR"),
              ],
            ),
          );
        });
  }
}
