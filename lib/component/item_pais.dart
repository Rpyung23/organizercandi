import 'package:flutter/material.dart';

import '../utils/color.dart';

class ItemPais extends StatefulWidget {
  String namePais = "";
  bool valueCheck = false;
  ItemPais(String p) {
    namePais = p;
  }

  @override
  State<ItemPais> createState() => _ItemPaisState();
}

class _ItemPaisState extends State<ItemPais> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.namePais),
      onTap: () {
        setState(() {
          widget.valueCheck
              ? widget.valueCheck = false
              : widget.valueCheck = true;
        });
      },
      trailing: Checkbox(
        checkColor: black,
        activeColor: Colors.transparent,
        focusColor: Colors.transparent,
        value: widget.valueCheck,
        side: BorderSide(color: Colors.transparent),
        onChanged: (valor) {
          setState(() {
            widget.valueCheck = valor!;
          });
        },
      ),
    );
  }
}
