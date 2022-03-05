import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:organizercandi/utils/dimens.dart';

import '../../utils/color.dart';

class EntradasCreate extends StatefulWidget {
  bool activeBottomNav = false;

  @override
  State<EntradasCreate> createState() => _EntradasCreateState();
}

class _EntradasCreateState extends State<EntradasCreate> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Entradas"),
            elevation: elevation_Appbar,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: Stack(
            children: [
              Align(
                child: Container(
                  margin: EdgeInsets.only(right: marginBig, left: marginBig),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/icon_entrada.png",
                        height: 90,
                        width: 90,
                      ),
                      SizedBox(
                        height: marginMedium,
                      ),
                      Text(
                        "Todavia no tiene entradas. Empieza a añadir ahora.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: textMediumEntrada),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.all(marginMedium),
                  child: FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          widget.activeBottomNav
                              ? widget.activeBottomNav = false
                              : widget.activeBottomNav = true;
                        });
                      },
                      elevation: 1,
                      backgroundColor: black,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(RadiusBorderMedium)),
                      child: Icon(Iconsax.add)),
                ),
              ),
            ],
          ),
          bottomNavigationBar: widget.activeBottomNav ? _bottomNav() : null,
        ),
        onWillPop: () async {
          Navigator.of(context).pop();
          return true;
        });
  }

  _bottomNav() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: black,
      selectedItemColor: Colors.white.withOpacity(.90),
      unselectedItemColor: Colors.white.withOpacity(.90),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      onTap: (value) {
        if (value == 1) {
          Navigator.of(context).pushNamed("/pais_divisa");
        } else {}
      },
      items: [
        BottomNavigationBarItem(label: 'Gratis', icon: Icon(Icons.money_off)),
        BottomNavigationBarItem(
          label: 'De pago',
          icon: Icon(Icons.attach_money),
        ),
      ],
    );
  }
}
