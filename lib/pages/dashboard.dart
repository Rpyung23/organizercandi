import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:organizercandi/utils/dimens.dart';

import '../utils/color.dart';
import '../view/eventos.dart';

class DashBoard extends StatefulWidget {
  DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        elevation: elevation_Appbar,
        actions: [
          Icon(Iconsax.search_normal),
          SizedBox(
            width: marginMedium,
          ),
          Badge(
            position: BadgePosition.topEnd(top: 4, end: -3),
            badgeContent: Text("1"),
            elevation: 0,
            badgeColor: Colors.white,
            child: Icon(Iconsax.notification),
          ),
          SizedBox(
            width: marginBig,
          )
        ],
      ),
      drawer: _drawer(),
      body: MisEventos(),
    ));
  }

  _drawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0.0),
        children: [
          DrawerHeader(
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.only(left: 0, right: 0),
              child: Stack(
                children: [
                  FadeInImage(
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.fill,
                      placeholder: AssetImage("assets/loading.gif"),
                      image: AssetImage("assets/profile.jpg")),
                  Positioned(
                      bottom: 0,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: marginMedium,
                            right: marginMedium,
                            bottom: marginBig),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "Hallowen 2021",
                              maxLines: 1,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: textBig,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("Nov 05-07-21 20:00 GTM+AR",
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: textSmallEntrada,
                                    fontWeight: FontWeight.w100)),
                            Text("Formosa,Argentina",
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: textSmallEntrada,
                                    fontWeight: FontWeight.w100))
                          ],
                        ),
                      ))
                ],
              )),
          ListTile(
            leading: Icon(Iconsax.edit),
            title: Text('Editar evento'),
          ),
          ListTile(
            leading: Icon(Iconsax.setting_2),
            title: Text('Configuración del evento'),
          ),
          Divider(
            thickness: DividerH,
            height: DividerHeigth,
          ),
          ListTile(
            leading: Icon(Iconsax.bill),
            title: Text('Mis eventos'),
          ),
          ListTile(
            leading: Icon(Iconsax.ticket),
            title: Text('Escanear ticket'),
          ),
          ListTile(
            leading: Icon(Iconsax.receipt),
            title: Text('Ordenes'),
          ),
          ListTile(
            leading: Icon(Iconsax.setting_2),
            title: Text('Configuración del dispositivo'),
          ),
          ListTile(
            leading: Icon(Iconsax.bank),
            title: Text('Cambiar Organización'),
          ),
          ListTile(
            leading: Icon(Iconsax.category),
            title: Text('Panel de control'),
          ),
          ListTile(
            leading: Icon(Iconsax.login),
            title: Text('Cerrar sesión'),
          ),
        ],
      ),
    );
  }
}
