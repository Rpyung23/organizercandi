import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:organizercandi/utils/color.dart';
import 'package:organizercandi/utils/dimens.dart';

class CreateOrganizer extends StatelessWidget {
  const CreateOrganizer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: black,
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
            actions: [
              IconButton(
                  onPressed: () {
                    _showAlertSaveEntrada(context);
                  },
                  icon: Icon(Icons.check)),
              menu()
            ]),
        body: Column(
          children: [
            appbar(context),
            Container(
              margin: EdgeInsets.all(marginBig),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nombre"),
                      TextField(
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: black)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: black)),
                            hintText: "Introduce el nombre del organizador"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: marginBig,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Descripción"),
                      TextField(
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: black)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: black)),
                            hintText: "Información opcionales"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: marginBig,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(Icons.link),
                      SizedBox(
                        width: marginBig,
                      ),
                      Flexible(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Sitio web"),
                          TextField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: black)),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: black)),
                                hintText: "Información opcionales"),
                          )
                        ],
                      ))
                    ],
                  ),
                  SizedBox(
                    height: marginBig,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(Icons.facebook_sharp),
                      SizedBox(
                        width: marginBig,
                      ),
                      Flexible(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Facebook"),
                          TextField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: black)),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: black)),
                                hintText: "Pagina de Facebook opcional"),
                          )
                        ],
                      ))
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }

  menu() {
    return PopupMenuButton(
      itemBuilder: (context) => [
        PopupMenuItem(
          child: Text("Previsualización"),
          value: 2,
        )
      ],
    );
  }

  _barraBlack(context) {
    return Container(
        color: black,
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.075);
  }

  _showAlertSaveEntrada(context) {
    var contextC = context;
    showDialog(
        context: context,
        builder: (context_) {
          return AlertDialog(
            content: Container(
              height: 175.0,
              child: Column(
                children: [
                  Icon(
                    Iconsax.edit_2,
                    size: 80,
                  ),
                  SizedBox(
                    height: marginSmall,
                  ),
                  Text(
                    "¿Deseas realizar los cambios realizados?",
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Descartar",
                                style: TextStyle(color: Colors.red),
                              ))),
                      Expanded(
                          child: TextButton(
                              onPressed: () {
                                Navigator.of(context_).pop();
                                Navigator.of(contextC).pop();
                              },
                              child: Text(
                                "Guardar",
                                style: TextStyle(color: purple),
                              )))
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  appbar(context) {
    return Container(
        child: Stack(
          children: [
            _barraBlack(context),
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: primary,
                child: Icon(Icons.camera_alt, color: Colors.white, size: 70),
              ),
            )
          ],
        ),
        height: MediaQuery.of(context).size.height * 0.15);
  }
}
