import 'package:flutter/material.dart';
import 'package:organizercandi/utils/color.dart';

import '../utils/dimens.dart';

class CardAllEvento extends StatelessWidget {
  const CardAllEvento({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginSmall),
      child: Column(children: [
        Row(
          children: [
            SizedBox(
              width: marginSmall,
            ),
            CircleAvatar(
              backgroundColor: primary,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "NOV.",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  Text("18",
                      style: TextStyle(fontSize: 10, color: Colors.white))
                ],
              ),
            ),
            SizedBox(
              width: marginSmall,
            ),
            FadeInImage(
                height: 75,
                width: 80,
                fit: BoxFit.fill,
                placeholder: AssetImage("assets/loading.gif"),
                image: NetworkImage(
                    "https://economipedia.com/wp-content/uploads/pasos-para-crear-un-evento.jpg")),
            SizedBox(
              width: marginSmall,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Hallowen 2021",
                  style: TextStyle(
                      fontSize: textMediumEntrada, fontWeight: FontWeight.w600),
                ),
                Text(
                  "Nov 05-07-21 20:00 GTM+AR",
                  style: TextStyle(color: black_05),
                ),
                Text("Formosa,Argentina", style: TextStyle(color: black_05)),
              ],
            )
          ],
        ),
        SizedBox(
          height: marginSmall,
        ),
        Divider(
          thickness: DividerH,
          height: DividerHeigth,
        )
      ]),
    );
  }
}
