import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:organizercandi/utils/color.dart';
import 'package:organizercandi/utils/dimens.dart';

class CodigoPromocional extends StatefulWidget {
  @override
  State<CodigoPromocional> createState() => _CodigoPromocionalState();
}

class _CodigoPromocionalState extends State<CodigoPromocional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
          title: Text("Codigo promocional"),
        ),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: _body(),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: _boton(),
            )
          ],
        ));
  }

  _body() {
    return Container(
      margin: EdgeInsets.only(right: marginBig, left: marginBig),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/icons/code_promo.png",
            height: 120,
            width: 120,
          ),
          SizedBox(
            height: marginMedium,
          ),
          Text(
            "Todavia no tienes ningun código promocional. Empieza a añadir ahora.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: textMedium),
          )
        ],
      ),
    );
  }

  _boton() {
    return Container(
      margin: EdgeInsets.all(marginBig),
      child: FloatingActionButton(
        backgroundColor: black,
        onPressed: () {
          Navigator.of(context).pushNamed("/create_promocional");
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(RadiusBorderMedium)),
        child: Icon(Iconsax.add),
      ),
    );
  }
}
