import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/color.dart';
import '../../utils/dimens.dart';

class CreatePromocional extends StatefulWidget {
  int tipoEntrada = 1;
  bool isVisibleAvanze = true;
  List<String> _listTarifas = ['Limitado', 'Ilimitado'];
  List<String> _listEntrada = [
    'Inmediatamente',
    'En fecha y hora',
  ];
  List<String> _listVenta = [
    'Cuando termina la venta de entradas',
    'En fecha y hora',
  ];
  List<String> _listCanalVenta = [
    'Solo en linea',
    'Solo en puerta',
    'En todas partes'
  ];
  List<String> _listFechas = [
    'Cuando el evento empieza',
    'Cuando el evento acaba',
    'En fecha y hora'
  ];

  /**
   * 0 -> gratis
   * 1 -> de pago
   * **/

  CreatePromocional() {}

  @override
  State<CreatePromocional> createState() => _CreatePromocionalState();
}

class _CreatePromocionalState extends State<CreatePromocional> {
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
            leadingWidth: 30,
            title: Text("Codigo promocional"),
            actions: [
              IconButton(
                  onPressed: () {
                    _showAlertDeleteEntrada();
                  },
                  icon: Icon(Iconsax.trash)),
              IconButton(
                  onPressed: () {
                    _showAlertSaveEntrada();
                  },
                  icon: Icon(Icons.check))
            ],
          ),
          body: _body(),
        )),
        onWillPop: () async {
          Navigator.of(context).pop();
          return true;
        });
  }

  _body() {
    return Container(
      margin: EdgeInsets.all(marginBig),
      child: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nombre del código promocional",
              style: TextStyle(fontSize: textSmallSmall),
            ),
            TextField(
                maxLength: 50,
                cursorColor: primary,
                decoration: InputDecoration(
                    hintText: "Dale un nombre a tu código",
                    helperText:
                        'Los clientes también pueden acceder a este código a través de una URL personalizada.',
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primary)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintStyle: TextStyle(color: black_05)))
          ],
        ),
        SizedBox(
          height: marginBig,
        ),
        Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "Tarifas",
                      style: TextStyle(fontSize: textSmallSmall),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: black))),
                      child: _DropDownButtonTarifas(),
                    ),
                  ],
                )),
                SizedBox(width: marginBig),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Precio",
                      style: TextStyle(fontSize: textSmallSmall),
                    ),
                    TextField(
                        cursorColor: primary,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "0.00",
                            prefixIcon:
                                Icon(Icons.attach_money, color: Colors.black),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: primary)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: black)),
                            hintStyle: TextStyle(color: black_05)))
                  ],
                )),
              ],
            ),
            SizedBox(
              height: marginMedium,
            ),
            Text(
              "Número total de entradas que se pueden comprar con este código.",
              style: TextStyle(color: black_05),
            )
          ],
        ),
        SizedBox(
          height: marginBig,
        ),
        Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Descuento en cantidad",
                      style: TextStyle(fontSize: textSmallSmall),
                    ),
                    TextField(
                        cursorColor: primary,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "0.00",
                            prefixIcon:
                                Icon(Icons.attach_money, color: Colors.black),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: primary)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: black)),
                            hintStyle: TextStyle(color: black_05)))
                  ],
                )),
                SizedBox(width: marginBig),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Descuento en porcentaje",
                      style: TextStyle(fontSize: textSmallSmall),
                    ),
                    TextField(
                        cursorColor: primary,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "0",
                            prefixIcon: Icon(Icons.percent_outlined,
                                color: Colors.black),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: primary)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: black)),
                            hintStyle: TextStyle(color: black_05)))
                  ],
                )),
              ],
            ),
          ],
        ),
        SizedBox(
          height: marginBig,
        ),
        Text(
          "Inicio del código promocional",
          style: TextStyle(fontSize: textSmall),
        ),
        _DropDownButtonEntrada(),
        SizedBox(
          height: marginBig,
        ),
        Text(
          "Fin del código promocional",
          style: TextStyle(fontSize: textSmall),
        ),
        _DropDownButtonVenta(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Iconsax.calendar),
            SizedBox(
              width: marginMedium,
            ),
            Text("vie, 15 abr.. 2022 6:00")
          ],
        ),
        ListTile(
          contentPadding: EdgeInsets.all(0),
          onTap: () {
            setState(() {
              widget.isVisibleAvanze
                  ? widget.isVisibleAvanze = false
                  : widget.isVisibleAvanze = true;
            });
          },
          title: Text("Mostrar opciones avanzadas"),
          trailing: IconButton(
              padding: EdgeInsets.all(0),
              alignment: Alignment.centerRight,
              onPressed: () {
                setState(() {
                  widget.isVisibleAvanze
                      ? widget.isVisibleAvanze = false
                      : widget.isVisibleAvanze = true;
                });
              },
              icon: Icon(
                Icons.arrow_drop_down,
                color: black,
              )),
        ),
        Visibility(visible: widget.isVisibleAvanze, child: _getAvanzado())
      ]),
    );
  }

  _DropDownButtonTarifas() {
    return DropdownButton<String>(
        value: widget._listTarifas[0],
        isExpanded: true,
        underline: Container(
          height: 0,
          color: black,
        ),
        items: _getItemsTarifas(),
        onChanged: (value) {
          print("VALUE TARIFAS : " + value!);
        });
  }

  _showAlertSaveEntrada() {
    var contextC = context;
    showDialog(
        context: context,
        builder: (context) {
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
                                Navigator.of(context).pop();
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

  _showAlertDeleteEntrada() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              height: 175.0,
              child: Column(
                children: [
                  Icon(
                    Iconsax.trash,
                    size: 80,
                  ),
                  SizedBox(
                    height: marginSmall,
                  ),
                  Text(
                    "¿Seguro que quieres eliminar esta entrada?",
                    textAlign: TextAlign.center,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Eliminar",
                        style: TextStyle(color: purple),
                      ))
                ],
              ),
            ),
          );
        });
  }

  _getItemsTarifas() {
    List<DropdownMenuItem<String>> item = [];
    for (var i = 0; i < widget._listTarifas.length; i++) {
      item.add(DropdownMenuItem<String>(
          value: widget._listTarifas[i], child: Text(widget._listTarifas[i])));
    }
    return item;
  }

  _getItemsVentas() {
    List<DropdownMenuItem<String>> item = [];
    for (var i = 0; i < widget._listVenta.length; i++) {
      item.add(DropdownMenuItem<String>(
          value: widget._listVenta[i], child: Text(widget._listVenta[i])));
    }
    return item;
  }

  _getItemsEntrada() {
    List<DropdownMenuItem<String>> item = [];
    for (var i = 0; i < widget._listEntrada.length; i++) {
      item.add(DropdownMenuItem<String>(
          value: widget._listEntrada[i], child: Text(widget._listEntrada[i])));
    }
    return item;
  }

  _getItemsCanalVenta() {
    List<DropdownMenuItem<String>> item = [];
    for (var i = 0; i < widget._listCanalVenta.length; i++) {
      item.add(DropdownMenuItem<String>(
          value: widget._listCanalVenta[i],
          child: Text(widget._listCanalVenta[i])));
    }
    return item;
  }

  _DropDownButtonVenta() {
    return DropdownButton<String>(
        value: widget._listVenta[0],
        isExpanded: true,
        underline: Container(
          height: 1,
          color: black,
        ),
        items: _getItemsVentas(),
        onChanged: (value) {
          print("VALUE TARIFAS : " + value!);
        });
  }

  _DropDownButtonEntrada() {
    return DropdownButton<String>(
        isExpanded: true,
        value: widget._listEntrada[0],
        underline: Container(
          height: 1,
          color: black,
        ),
        items: _getItemsEntrada(),
        onChanged: (value) {
          print("VALUE TARIFAS : " + value!);
        });
  }

  _DropDownButtonCanalVenta() {
    return DropdownButton<String>(
        value: widget._listCanalVenta[0],
        isExpanded: true,
        underline: Container(
          height: 1,
          color: black,
        ),
        items: _getItemsCanalVenta(),
        onChanged: (value) {
          print("VALUE TARIFAS : " + value!);
        });
  }

  _getAvanzado() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "Visibilidad de la entrada",
              style: TextStyle(fontSize: textSmall),
            ),
            Container(
              width: double.infinity,
              child: _DropDownButtonEntrada(),
            )
          ],
        ),
        SizedBox(
          height: marginMedium,
        ),
        GestureDetector(
          child: Row(
            children: [
              Checkbox(
                value: true,
                onChanged: (value) {
                  if (value!) {
                    _showAlertSelectEntrada();
                  }
                },
                activeColor: Colors.black,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Selección de entradas",
                    style: TextStyle(color: black_05, fontSize: textSmall),
                  ),
                  SizedBox(
                    height: marginSmall,
                  ),
                  Text(
                    "Elegir entradas",
                    style: TextStyle(fontSize: textMediumEntrada),
                  )
                ],
              )
            ],
          ),
          onTap: () {
            _showAlertSelectEntrada();
          },
        ),
        SizedBox(
          height: marginMedium,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "Canal de ventas",
              style: TextStyle(fontSize: textSmall),
            ),
            Container(
              width: double.infinity,
              child: _DropDownButtonCanalVenta(),
            )
          ],
        ),
      ],
    );
  }

  _showAlertSelectEntrada() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text("Seleccionar entradas"),
                    IconButton(
                        onPressed: () {}, icon: Icon(Iconsax.search_normal))
                  ],
                ),
              ),
              content: ListView(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    title: Text("Hallowen 2021"),
                    trailing: Checkbox(
                      value: true,
                      activeColor: black,
                      onChanged: (value) {},
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    title: Text("Event CA"),
                    trailing: Checkbox(
                      value: true,
                      activeColor: black,
                      onChanged: (value) {},
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    title: Text("Festival Zozo"),
                    trailing: Checkbox(
                      value: false,
                      activeColor: black,
                      onChanged: (value) {},
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    title: Text("Event Carnaval"),
                    trailing: Checkbox(
                      value: false,
                      activeColor: black,
                      onChanged: (value) {},
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    title: Text("Festival Cande Gariso Cordoba"),
                    trailing: Checkbox(
                      value: false,
                      activeColor: black,
                      onChanged: (value) {},
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    title: Text("Hallowen 2021"),
                    trailing: Checkbox(
                      value: false,
                      activeColor: black,
                      onChanged: (value) {},
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    title: Text("Hallowen 2021"),
                    trailing: Checkbox(
                      value: false,
                      activeColor: black,
                      onChanged: (value) {},
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    title: Text("Hallowen 2021"),
                    trailing: Checkbox(
                      value: false,
                      activeColor: black,
                      onChanged: (value) {},
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    title: Text("Hallowen 2021"),
                    trailing: Checkbox(
                      value: false,
                      activeColor: black,
                      onChanged: (value) {},
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    title: Text("Hallowen 2021"),
                    trailing: Checkbox(
                      value: false,
                      activeColor: black,
                      onChanged: (value) {},
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    title: Text("Hallowen 2021"),
                    trailing: Checkbox(
                      value: false,
                      activeColor: black,
                      onChanged: (value) {},
                    ),
                  )
                ],
              ));
        });
  }
}
