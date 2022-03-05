import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:organizercandi/utils/color.dart';

import '../utils/dimens.dart';

class CambioOrganizador extends StatelessWidget {
  const CambioOrganizador({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(marginBig),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: CircleAvatar(
                backgroundColor: black,
                child: Icon(
                  Icons.create_outlined,
                  color: Colors.white,
                ),
              ),
              title: Text("Jockey Club"),
            ),
            SizedBox(
              height: marginMedium,
            ),
            Divider(
              height: DividerHeigth,
              thickness: DividerH,
            )
          ],
        ),
      ),
    );
  }
}
