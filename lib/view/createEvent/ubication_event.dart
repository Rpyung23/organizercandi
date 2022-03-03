import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:organizercandi/utils/dimens.dart';

import '../../utils/color.dart';

class UbicationEvent extends StatefulWidget {
  bool resultSearch = false;
  TextEditingController _textSearchController = new TextEditingController();

  @override
  State<UbicationEvent> createState() => _UbicacionEventState();
}

class _UbicacionEventState extends State<UbicationEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.only(right: marginBig, left: marginBig),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Ubicación",
                        style: TextStyle(
                            fontSize: textBig, fontWeight: FontWeight.w800),
                      ),
                    ),
                    SizedBox(
                      height: marginMedium,
                    ),
                    TextField(
                      cursorColor: primary,
                      controller: widget._textSearchController,
                      onChanged: (value) {
                        if (value.toString().isNotEmpty) {
                          setState(() {
                            widget.resultSearch = true;
                          });
                        } else {
                          setState(() {
                            widget.resultSearch = false;
                          });
                        }
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Iconsax.search_normal,
                          color: black_05,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: black_05),
                            borderRadius:
                                BorderRadius.circular(ButtonRadiusBorder)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(ButtonRadiusBorder),
                            borderSide: BorderSide(color: black_05)),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(ButtonRadiusBorder),
                            borderSide: BorderSide(color: black_05)),
                        hintText: 'Buscar...',
                      ),
                    ),
                    SizedBox(
                      height: marginMedium,
                    ),
                    Text(
                      "BUSQUEDAS",
                      style: TextStyle(
                          fontSize: textSmall, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: marginMedium,
                    ),
                    _resultSearch()
                  ],
                ))));
  }

  _itemLugar(String s, String t) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Iconsax.location),
          contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
          title: Text(s),
          subtitle: Text(t),
        ),
        Divider(
          height: DividerHeigth,
          thickness: DividerH,
          color: Colors.black12,
        )
      ],
    );
  }

  _resultSearch() {
    return Visibility(
        maintainSize: widget.resultSearch,
        maintainAnimation: true,
        maintainState: true,
        visible: widget.resultSearch,
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                primary: false,
                scrollDirection: Axis.vertical,
                children: [
                  _itemLugar('Asunción,Paraguay', 'Paraguay'),
                  _itemLugar('Asunción,Paraguay', 'Paraguay'),
                  _itemLugar('Asunción,Paraguay', 'Paraguay'),
                  _addNewLugar()
                ],
              )
            ],
          ),
        ));
  }

  _addNewLugar() {
    return Column(
      children: [
        ListTile(
          leading: Icon(Iconsax.add),
          contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
          title: Text('¿No encuentras lo que buscas?'),
          subtitle: Text('Añade un lugar o una dirección nueva'),
          onTap: () {
            Navigator.of(context).pushNamed("/add_new_location");
          },
        ),
        Divider(
          height: DividerHeigth,
          thickness: DividerH,
          color: Colors.black12,
        )
      ],
    );
  }
}
