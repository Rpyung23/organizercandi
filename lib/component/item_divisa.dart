import 'package:flutter/material.dart';

import '../utils/color.dart';

class ItemDivisa extends StatefulWidget {
  String nameDivisa = "";
  bool valueCheck = false;
  ItemDivisa(String p) {
    nameDivisa = p;
  }

  @override
  State<ItemDivisa> createState() => _ItemDivisaState();
}

class _ItemDivisaState extends State<ItemDivisa> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.nameDivisa),
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
