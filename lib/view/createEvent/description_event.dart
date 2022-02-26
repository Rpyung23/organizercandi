import 'package:flutter/material.dart';
import 'package:organizercandi/utils/dimens.dart';

class CreateDescriptionEvent extends StatelessWidget {
  const CreateDescriptionEvent({Key? key}) : super(key: key);

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
                "Describe tu evento",
                style:
                    TextStyle(fontSize: textBig, fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
              height: marginMedium,
            ),
            TextField(
              maxLines: 8,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(0.0),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)),
                hintText:
                    'Introduce un breve resumen de tu evento para que los invitados sepan que pueden esperar.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
