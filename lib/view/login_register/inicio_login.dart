import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:organizercandi/utils/color.dart';
import 'package:organizercandi/utils/dimens.dart';

class ViewInicioLogin extends StatelessWidget {
  const ViewInicioLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              color: HexColor("#F2F2F2"),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person_outlined,
                      color: black,
                      size: 55,
                    ),
                  ),
                  SizedBox(
                    height: marginMedium,
                  ),
                  Text("leandrovqz@hotmail.com"),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Cambiar",
                        style: TextStyle(color: primary),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: marginBig,
            ),
            Container(
              margin: EdgeInsets.only(right: marginBig, left: marginBig),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Contraseña*"),
                  TextField(
                    cursorColor: black,
                    decoration: InputDecoration(
                        hintText: "Introduce una contraseña",
                        hintStyle: TextStyle(color: black_05),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: black)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: black))),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
