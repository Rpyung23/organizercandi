import 'dart:ui';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:organizercandi/pages/panel_control.dart';
import 'package:organizercandi/utils/dimens.dart';

import '../utils/color.dart';
import '../view/cambio_organizacion.dart';
import '../view/checkins.dart';
import '../view/config_dispo.dart';
import '../view/eventos.dart';

class DashBoard extends StatefulWidget {
  DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _itemOption = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        elevation: elevation_Appbar,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Iconsax.search_normal),
          ),
          /*Badge(
              position: BadgePosition.topEnd(top: 5, end: 8),
              badgeContent: Text("1"),
              elevation: 0,
              badgeColor: Colors.white,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Iconsax.notification),
              )),*/
        ],
      ),
      drawer: _drawer(),
      body: _getView(),
    ));
  }

  _drawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0.0),
        children: [
          _headerDrawer(),
          ListTile(
            leading: Icon(
              Iconsax.edit,
              color: Colors.black87,
            ),
            title: Text(
              'Editar evento',
              style: TextStyle(
                  fontSize: textMediumEntrada, fontWeight: FontWeight.w500),
            ),
            selectedColor: primary,
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: Icon(
              Icons.list_sharp,
              color: Colors.black87,
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
            title: Text('Lista de invitados',
                style: TextStyle(
                    fontSize: textMediumEntrada, fontWeight: FontWeight.w500)),
            selectedColor: primary,
          ),
          ListTile(
            leading: Icon(Iconsax.setting_2, color: Colors.black87),
            title: Text('Configuración del evento',
                style: TextStyle(
                    fontSize: textMediumEntrada, fontWeight: FontWeight.w500)),
            selectedColor: primary,
            onTap: () {
              Navigator.of(context).pop();
              setState(() {
                this._itemOption = 2;
              });
            },
          ),
          Divider(
            thickness: DividerH,
            height: DividerHeigth,
          ),
          GestureDetector(
            child: ListTile(
              leading: Icon(Iconsax.bill, color: Colors.black87),
              title: Text('Eventos',
                  style: TextStyle(
                      fontSize: textMediumEntrada,
                      fontWeight: FontWeight.w500)),
              selectedColor: primary,
            ),
            onTap: () {
              Navigator.of(context).pop();
              setState(() {
                this._itemOption = 3;
              });
            },
          ),
          ListTile(
            leading: Icon(Iconsax.ticket, color: Colors.black87),
            title: Text('Check ins',
                style: TextStyle(
                    fontSize: textMediumEntrada, fontWeight: FontWeight.w500)),
            selectedColor: primary,
            onTap: () {
              setState(() {
                this._itemOption = 4;
              });
              Navigator.of(context).pop();
            },
          ),
          GestureDetector(
              child: ListTile(
            leading: Icon(Iconsax.receipt, color: Colors.black87),
            title: Text('Buscar pedidos',
                style: TextStyle(
                    fontSize: textMediumEntrada, fontWeight: FontWeight.w500)),
            selectedColor: primary,
            onTap: () {
              Navigator.of(context).pop();
            },
          )),
          ListTile(
            leading: Icon(Iconsax.setting_2, color: Colors.black87),
            title: Text('Configuración del dispositivo',
                style: TextStyle(
                    fontSize: textMediumEntrada, fontWeight: FontWeight.w500)),
            selectedColor: primary,
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: Icon(Iconsax.bank, color: Colors.black87),
            title: Text('Cambiar Organización',
                style: TextStyle(
                    fontSize: textMediumEntrada, fontWeight: FontWeight.w500)),
            selectedColor: primary,
            onTap: () {
              Navigator.of(context).pop();
              setState(() {
                this._itemOption = 7;
              });
            },
          ),
          GestureDetector(
            child: ListTile(
              leading: Icon(Iconsax.category, color: Colors.black87),
              title: Text('Panel de control',
                  style: TextStyle(
                      fontSize: textMediumEntrada,
                      fontWeight: FontWeight.w500)),
              selectedColor: primary,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed("/panel");
            },
          ),
          ListTile(
            leading: Icon(Iconsax.login, color: Colors.black87),
            selectedColor: primary,
            title: Text('Cerrar sesión',
                style: TextStyle(
                    fontSize: textMediumEntrada, fontWeight: FontWeight.w500)),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  _getView() {
    switch (this._itemOption) {
      case 0:
        break;
      case 1:
        break;
      case 2:
        return ConfigDispo();
        break;
      case 3:
        return MisEventos();
        break;
      case 4:
        return CheckIns();
        break;
      case 7:
        return CambioOrganizador();
        break;
    }
  }

  _headerDrawer() {
    return DrawerHeader(
      margin: EdgeInsets.all(0),
      decoration: BoxDecoration(color: HexColor("212121")),
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
              flex: 1,
              child: FadeInImage(
                  height: 90,
                  width: double.infinity,
                  fit: BoxFit.fill,
                  placeholder: AssetImage("assets/loading.gif"),
                  image: AssetImage("assets/profile.jpg"))),
          SizedBox(
            width: marginMedium,
          ),
          Expanded(
              child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
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
          ))
        ],
      ),
    );
  }
}


/*child: Row(
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
          ]*/
       
