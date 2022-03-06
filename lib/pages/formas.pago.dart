import 'package:flutter/material.dart';
import 'package:organizercandi/utils/color.dart';
import 'package:organizercandi/utils/dimens.dart';

class FormasPago extends StatelessWidget {
  const FormasPago({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
            appBar: AppBar(
                title: Text("Formas de pagos"),
                leading: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back))),
            body: Container(
              margin: EdgeInsets.only(
                  right: marginBig, top: marginBig, left: marginBig),
              child: ListView(
                children: [
                  Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        title: Text("Efectivo"),
                        trailing: Checkbox(
                          value: true,
                          activeColor: black,
                          onChanged: (val) {},
                        ),
                      ),
                      Divider(
                        height: 1,
                        thickness: 1,
                      )
                    ],
                  ),
                  SizedBox(
                    height: marginBig,
                  ),
                  Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        title: Text("Tarjeta de crédito"),
                        trailing: Checkbox(
                          value: true,
                          activeColor: black,
                          onChanged: (val) {},
                        ),
                      ),
                      Divider(
                        height: 1,
                        thickness: 1,
                      )
                    ],
                  ),
                  SizedBox(
                    height: marginBig,
                  ),
                  Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        title: Text("Paypal"),
                        trailing: Checkbox(
                          value: true,
                          activeColor: black,
                          onChanged: (val) {},
                        ),
                      ),
                      Divider(
                        height: 1,
                        thickness: 1,
                      )
                    ],
                  ),
                  SizedBox(
                    height: marginBig,
                  ),
                  Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        title: Text("Mercado Pago"),
                        trailing: Checkbox(
                          value: true,
                          activeColor: black,
                          onChanged: (val) {},
                        ),
                      ),
                      Divider(
                        height: 1,
                        thickness: 1,
                      )
                    ],
                  ),
                  SizedBox(
                    height: marginBig,
                  ),
                  Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        title: Text("Tigo Money"),
                        trailing: Checkbox(
                          value: true,
                          activeColor: black,
                          onChanged: (val) {},
                        ),
                      ),
                      Divider(
                        height: 1,
                        thickness: 1,
                      )
                    ],
                  ),
                ],
              ),
            )),
        onWillPop: () async {
          Navigator.of(context).pop(); 
          return true;
        });
  }
}
