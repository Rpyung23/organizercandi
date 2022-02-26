import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:organizercandi/utils/color.dart';
import 'package:organizercandi/utils/dimens.dart';

import '../../component/component_fechas.dart';

class CreateFechaEvent extends StatelessWidget {
  const CreateFechaEvent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(right: marginBig, left: marginBig),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                "Establece la fecha de tu evento.",
                style:
                    TextStyle(fontSize: textBig, fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
              height: marginBig,
            ),
            Text("A partir del:",
                style: TextStyle(
                    fontSize: textMedium, fontWeight: FontWeight.w600)),
            SizedBox(
              height: marginMedium,
            ),
            ComponentFechas(),
            SizedBox(
              height: marginBig,
            ),
            Text("Para:",
                style: TextStyle(
                    fontSize: textMedium, fontWeight: FontWeight.w600)),
            SizedBox(
              height: marginMedium,
            ),
            ComponentFechas()
          ],
        ),
      ),
    );
  }
}
