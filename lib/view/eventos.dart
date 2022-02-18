import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'eventos/all.dart';

class MisEventos extends StatefulWidget {
  MisEventos({Key? key}) : super(key: key);

  @override
  State<MisEventos> createState() => _MisEventosState();
}

class _MisEventosState extends State<MisEventos> {
  int _optionSelect = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: TabBar(
          indicatorColor: Colors.black,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black38,
          onTap: (item) {
            setState(() {
              this._optionSelect = item;
            });
          },
          tabs: [
            Tab(
              text: 'Todos',
            ),
            Tab(
              text: 'Anteriores',
            ),
            Tab(
              text: 'Borrador',
            ),
          ],
        ),
        body: _view(),
      ),
    );
  }

  _view() {
    switch (this._optionSelect) {
      case 0:
        return AllEventos();
        break;
      case 1:
        break;
      case 2:
        break;
    }
  }
}
