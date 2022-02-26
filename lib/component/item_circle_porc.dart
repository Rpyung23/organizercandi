import 'package:flutter/material.dart';
import 'package:organizercandi/utils/color.dart';
import 'package:organizercandi/utils/dimens.dart';

class ItemCirclePorc extends StatelessWidget {
  int porce = 0;
  Color? color;
  String title = "";
  int total = 0;
  int subTotal = 0;

  ItemCirclePorc(int porce, Color color, String title, int total, int sub) {
    this.porce = porce;
    this.color = color;
    this.title = title;
    this.total = total;
    this.subTotal = sub;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: marginBig,
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 32,
              backgroundColor: this.color,
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 29,
                  child: Text(
                    this.porce.toString() + "%",
                    style: TextStyle(color: Colors.black),
                  )),
            ),
            SizedBox(
              width: marginMedium,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: textMediumEntrada,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Text(
                      this.subTotal.toString(),
                      style: TextStyle(color: color, fontSize: textSmallSmall),
                    ),
                    Text("/" + this.total.toString(),
                        style: TextStyle(
                            color: black_05, fontSize: textSmallSmall))
                  ],
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
