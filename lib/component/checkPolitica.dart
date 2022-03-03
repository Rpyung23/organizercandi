import 'package:flutter/material.dart';

class CheckPolitica extends StatefulWidget {
  String titulo = "";
  bool bandera = false;
  CheckPolitica(String t) {
    this.titulo = t;
  }

  @override
  State<CheckPolitica> createState() => _CheckPoliticaState();
}

class _CheckPoliticaState extends State<CheckPolitica> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.titulo),
      trailing: Checkbox(
        value: widget.bandera,
        checkColor: Colors.black,
        activeColor: Colors.transparent,
        onChanged: (value) {
          setState(() {
            widget.bandera = value!;
          });
        },
      ),
    );
  }
}
