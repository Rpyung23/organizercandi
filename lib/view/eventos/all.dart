import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:organizercandi/utils/dimens.dart';

import '../../component/all_evento.dart';

class AllEventos extends StatefulWidget {
  AllEventos({Key? key}) : super(key: key);

  @override
  State<AllEventos> createState() => _AllEventosState();
}

class _AllEventosState extends State<AllEventos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              primary: false,
              children: const [
                CardAllEvento(),
                CardAllEvento(),
                CardAllEvento(),
                CardAllEvento(),
                CardAllEvento(),
                CardAllEvento(),
                CardAllEvento(),
                CardAllEvento(),
                CardAllEvento(),
                CardAllEvento(),
                CardAllEvento(),
                CardAllEvento()
              ],
            ),
          ),
          Positioned(
              //alignment: Alignment.bottomRight,
              bottom: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.all(marginMedium),
                child: FloatingActionButton(
                  elevation: 3,
                  onPressed: () {
                    Navigator.of(context).pushNamed("/createEvento");
                  },
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(marginMedium)),
                  child: Icon(Iconsax.add),
                ),
              ))
        ],
      ),
    );
  }
}
