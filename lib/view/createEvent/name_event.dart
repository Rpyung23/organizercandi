import 'package:flutter/material.dart';
import 'package:organizercandi/utils/dimens.dart';

class CreateNameEvent extends StatelessWidget {
  const CreateNameEvent({Key? key}) : super(key: key);

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
                "Describe el nombre de tu evento",
                style:
                    TextStyle(fontSize: textBig, fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
              height: marginMedium,
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(0.0),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)),
                hintText: 'Dale un nombre corto a tu evento',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
