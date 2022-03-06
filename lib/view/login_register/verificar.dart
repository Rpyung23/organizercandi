import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:organizercandi/utils/color.dart';
import 'package:organizercandi/utils/dimens.dart';

class ViewVerificarDireccion extends StatelessWidget {
  const ViewVerificarDireccion({Key? key}) : super(key: key);

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
                  SizedBox(
                    height: marginMedium,
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(right: marginSmall, left: marginSmall),
                    child: Text(
                      "Enviamos un email a leandrovqz@hotmail.com con instrucciones para reestablecer la contraseña",
                      style: TextStyle(
                          fontSize: textMedium, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
