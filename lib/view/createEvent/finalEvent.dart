import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:organizercandi/utils/dimens.dart';

import '../../component/checkPolitica.dart';
import '../../utils/color.dart';

class FinalEvent extends StatefulWidget {
  FinalEvent({Key? key}) : super(key: key);

  @override
  State<FinalEvent> createState() => _FinalEventState();
}

class _FinalEventState extends State<FinalEvent> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: SafeArea(
            child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back)),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Iconsax.eye,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.check,
                  )),
              IconButton(onPressed: () {}, icon: Icon(Iconsax.export)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                  ))
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    width: double.infinity,
                    color: colorMasMenos,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.asset(
                            "assets/icons/add_fotos.png",
                            height: 35,
                            width: 35,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Agregar fotos",
                                style: TextStyle(color: primary),
                              ))
                        ],
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.35),
                Container(
                    width: double.infinity,
                    color: black_custom,
                    child: ListTile(
                      leading: Icon(
                        Iconsax.sort,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Halloween 2021",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: textBig,
                            fontWeight: FontWeight.w600),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Organizador",
                            style: TextStyle(color: Colors.white),
                          ),
                          Row(
                            children: [
                              Text("Jockey Club",
                                  style: TextStyle(color: Colors.white)),
                              SizedBox(
                                width: marginMedium,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Colors.white,
                              )
                            ],
                          ),
                          Text("Decribe brevemente tu evento",
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                      trailing: Text(
                        "45",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                Container(
                  margin: EdgeInsets.all(marginBig),
                  child: Column(
                    children: [
                      _datosEvento(),
                      _lugarEvento(),
                      _categoriaEvento(),
                      _entradaEvento(),
                      _politicasdevolu(),
                      _privacidad(),
                      _codPromocional(),
                      _addProducto()
                    ],
                  ),
                )
              ],
            ),
          ),
        )),
        onWillPop: () async {
          Navigator.of(context).pop();
          return true;
        });
  }

  _datosEvento() {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 0),
      minLeadingWidth: 10,
      leading: Badge(
        elevation: 0,
        position: BadgePosition.topEnd(top: -2, end: -2),
        child: Icon(Iconsax.calendar),
      ),
      subtitle: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Inicio del evento",
                    style:
                        TextStyle(fontSize: textSmallSmall, color: black_05)),
                Text("Dom. 23 ago.2020 10:00",
                    style:
                        TextStyle(fontSize: textMedium, color: Colors.black87)),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Mas opciones",
                          style: TextStyle(
                              fontSize: textSmallSmall, color: black_05),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 20,
                          color: black_05,
                        )
                      ],
                    ))
              ],
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Finalización del evento",
                  style: TextStyle(fontSize: textSmallSmall, color: black_05)),
              Text("Dom. 23 ago.2020 10:00",
                  style:
                      TextStyle(fontSize: textMedium, color: Colors.black87)),
              TextButton(
                  onPressed: null,
                  style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                  child: Text(""))
            ],
          ))
        ],
      ),
    );
  }

  _lugarEvento() {
    return ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 0),
        minLeadingWidth: 10,
        leading: Badge(
          elevation: 0,
          position: BadgePosition.topEnd(top: -2, end: -2),
          child: Icon(Iconsax.location),
        ),
        title: Text("Lugar",
            style: TextStyle(fontSize: textSmall, color: Colors.black)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Dirección",
                style: TextStyle(fontSize: textSmallSmall, color: black_05)),
            Text("Formasa, 897 Sarmiento 800 Formosa Formosa P3600",
                style: TextStyle(fontSize: textMedium, color: Colors.black87))
          ],
        ));
  }

  _categoriaEvento() {
    return ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 0),
        minLeadingWidth: 10,
        onTap: () {
          _showAlertCategoria();
        },
        leading: Badge(
          elevation: 0,
          position: BadgePosition.topEnd(top: -2, end: -2),
          child: Icon(Iconsax.tag),
        ),
        title: Text("Seleccionar una categoria",
            style: TextStyle(fontSize: textSmall, color: black_05)),
        subtitle: Text("Conciertos",
            style: TextStyle(fontSize: textMedium, color: Colors.black87)));
  }

  _entradaEvento() {
    return ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 0),
        minLeadingWidth: 10,
        leading: Badge(
          elevation: 0,
          position: BadgePosition.topEnd(top: -2, end: -2),
          child: Icon(Iconsax.ticket),
        ),
        title: Text("Entradas", style: TextStyle(fontSize: textMedium)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("1 Entrada", style: TextStyle(fontSize: textSmall)),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Mas opciones",
                      style: TextStyle(fontSize: textSmall, color: black_05),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      size: 20,
                      color: black_05,
                    )
                  ],
                ))
          ],
        ));
  }

  _politicasdevolu() {
    return ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 0),
        minLeadingWidth: 10,
        onTap: () {
          _showAlertPoliticas();
        },
        leading: Icon(Iconsax.receipt_2),
        title: Text("Políticas de devolución",
            style: TextStyle(fontSize: textMedium)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Añadir políticas (opcional)",
                style: TextStyle(fontSize: textSmall)),
            Text("No se puede cambiar una vez que el evento este en marcha",
                style: TextStyle(fontSize: textSmallSmall)),
          ],
        ));
  }

  _privacidad() {
    return ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 0),
        minLeadingWidth: 10,
        leading: Badge(
          elevation: 0,
          position: BadgePosition.topEnd(top: -2, end: -2),
          child: Icon(Iconsax.eye),
        ),
        title: Text("Privacidad", style: TextStyle(fontSize: textMedium)),
        subtitle:
            Text("Evento publíco", style: TextStyle(fontSize: textSmall)));
  }

  _codPromocional() {
    return ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 0),
        minLeadingWidth: 10,
        leading: Icon(Iconsax.gift),
        title:
            Text("Código Promocional", style: TextStyle(fontSize: textMedium)),
        subtitle: Text("Agregar código promocional",
            style: TextStyle(fontSize: textSmall)));
  }

  _addProducto() {
    return ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 0),
        minLeadingWidth: 10,
        leading: Icon(Iconsax.box),
        title:
            Text("Agregar productos", style: TextStyle(fontSize: textMedium)),
        subtitle: Text("Agrega un  productos",
            style: TextStyle(fontSize: textSmall)));
  }

  _showAlertCategoria() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Seleccionar categoria",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            content: ListView(
              children: [
                itemCategoria(
                    Icon(
                      Iconsax.music,
                      color: Colors.white,
                    ),
                    "Musica"),
                itemCategoria(
                    Icon(
                      Icons.dashboard_outlined,
                      color: Colors.white,
                    ),
                    "Business & Professional"),
                itemCategoria(
                    Icon(
                      Icons.fastfood_outlined,
                      color: Colors.white,
                    ),
                    "Food & Drink"),
                itemCategoria(
                    Icon(
                      Iconsax.location,
                      color: Colors.white,
                    ),
                    "Community & Culture"),
                itemCategoria(
                    Icon(
                      Iconsax.video_play,
                      color: Colors.white,
                    ),
                    "Performing & Visual Arts"),
                itemCategoria(
                    Icon(
                      Iconsax.camera,
                      color: Colors.white,
                    ),
                    "Film, Media & Entertainment"),
                itemCategoria(
                    Icon(
                      Icons.sports_baseball_outlined,
                      color: Colors.white,
                    ),
                    "Sports & Fitness"),
                itemCategoria(
                    Icon(
                      Iconsax.microphone,
                      color: Colors.white,
                    ),
                    "Conferencia"),
                itemCategoria(
                    Icon(
                      Iconsax.music_dashboard,
                      color: Colors.white,
                    ),
                    "Seminario o Charla"),
                itemCategoria(
                    Icon(
                      Icons.ad_units,
                      color: Colors.white,
                    ),
                    "Consumer,Show,Lives"),
                itemCategoria(
                    Icon(
                      Iconsax.card,
                      color: Colors.white,
                    ),
                    "Convención"),
                itemCategoria(
                    Icon(
                      Iconsax.music,
                      color: Colors.white,
                    ),
                    "Conciertos"),
                itemCategoria(
                    Icon(
                      Iconsax.play,
                      color: Colors.white,
                    ),
                    "Cinema"),
                itemCategoria(
                    Icon(
                      Icons.dinner_dining_outlined,
                      color: Colors.white,
                    ),
                    "Dinner o Gala"),
              ],
            ),
          );
        });
  }

  _showAlertPoliticas() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Políticas de devolución",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            content: ListView(
              children: [
                CheckPolitica('1 día antes del evento'),
                CheckPolitica('7 días antes del evento'),
                CheckPolitica('30 días antes del evento'),
                CheckPolitica('Ningún reembolso, en ningún monento'),
                CheckPolitica('Sin definir'),
              ],
            ),
          );
        });
  }

  itemCategoria(Icon icono, String t) {
    return ListTile(
      leading: CircleAvatar(
        child: icono,
        backgroundColor: Colors.black,
      ),
      title: Text(t),
    );
  }
}
