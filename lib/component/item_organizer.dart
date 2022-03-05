import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iconsax/iconsax.dart';

class ItemOrganizer extends StatelessWidget {
  String iniciales = "";
  String name = "";

  ItemOrganizer(String i, String n) {
    this.iniciales = i;
    this.name = n;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(
          iniciales,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      title: Text(
        name,
      ),
      trailing: PopupMenuButton(
        itemBuilder: (context) => [
          PopupMenuItem(
            child: Text("Editar"),
            value: 1,
          ),
          PopupMenuItem(
            child: Text("Previsualización"),
            value: 2,
          )
        ],
      ),
    );
  }
}
