import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:organizercandi/utils/color.dart';
import 'package:organizercandi/utils/dimens.dart';

import '../../component/itemcheckins.dart';

class AllCheckIns extends StatefulWidget {
  AllCheckIns({Key? key}) : super(key: key);

  @override
  State<AllCheckIns> createState() => _AllCheckInsState();
}

class _AllCheckInsState extends State<AllCheckIns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(marginBig),
              decoration: BoxDecoration(
                  color: HexColor('#F1F1F2'),
                  borderRadius: BorderRadius.circular(RadiusBorderMedium)),
              child: TextFormField(
                cursorColor: black_05,
                decoration: InputDecoration(
                    hintText: "Buscar participantes",
                    prefixIcon: Icon(
                      Iconsax.search_normal,
                      color: black_05,
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent))),
              ),
            ),
            ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                ItemCheckIns("Leandro José Peña", "Ticket 1", true),
                ItemCheckIns("Leandro José Peña", "Ticket 1", false),
                ItemCheckIns("Leandro José Peña", "Ticket 1", true),
                ItemCheckIns("Leandro José Peña", "Ticket 1", false),
                ItemCheckIns("Leandro José Peña", "Ticket 1", true),
                ItemCheckIns("Leandro José Peña", "Ticket 1", false),
                ItemCheckIns("Leandro José Peña", "Ticket 1", true),
                ItemCheckIns("Leandro José Peña", "Ticket 1", false),
                ItemCheckIns("Leandro José Peña", "Ticket 1", true),
                ItemCheckIns("Leandro José Peña", "Ticket 1", false),
                ItemCheckIns("Leandro José Peña", "Ticket 1", true),
                ItemCheckIns("Leandro José Peña", "Ticket 1", false)
              ],
            )
          ],
        ),
      ),
    );
  }
}
