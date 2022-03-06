import 'package:flutter/material.dart';
import 'package:organizercandi/utils/dimens.dart';

class ViewLogin extends StatelessWidget {
  const ViewLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(marginBig),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Correo electrónico"),
            TextField(
              decoration: InputDecoration(
                  hintText: "Introduce tu dirección de correo electrónico"),
            )
          ],
        ),
      ),
    );
  }
}
