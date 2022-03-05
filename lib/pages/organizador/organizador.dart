import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:organizercandi/utils/color.dart';

import '../../component/item_organizer.dart';
import '../../utils/dimens.dart';

class ListOrganizer extends StatefulWidget {
  ListOrganizer({Key? key}) : super(key: key);

  @override
  State<ListOrganizer> createState() => _ListOrganizerState();
}

class _ListOrganizerState extends State<ListOrganizer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Organizador"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
        children: [
          _body(),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.all(marginBig),
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: black,
                elevation: 1,
                child: Icon(Iconsax.add),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(RadiusBorderMedium)),
              ),
            ),
          )
        ],
      ),
    );
  }

  _body() {
    return ListView(
      children: [
        ItemOrganizer('JC', 'Jockey Club'),
        ItemOrganizer('JC', 'Jockey Club'),
        ItemOrganizer('JC', 'Jockey Club'),
        ItemOrganizer('JC', 'Jockey Club'),
        ItemOrganizer('JC', 'Jockey Club'),
        ItemOrganizer('JC', 'Jockey Club')
      ],
    );
  }
}
