import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:organizercandi/utils/dimens.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../utils/color.dart';

class ScannerQr extends StatefulWidget {
  ScannerQr({Key? key}) : super(key: key);
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  State<ScannerQr> createState() => _ScannerQrState();
}

class _ScannerQrState extends State<ScannerQr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: black,
        title: Center(
          child: Image.asset(
            "assets/icons/canditicket_white.png",
            height: 30,
            width: 30,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Iconsax.setting_2))],
      ),
      body: Stack(
        children: [
          _qr(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.all(marginBig),
              child: _card(),
            ),
          )
        ],
      ),
    ));
  }

  _qr() {
    return QRView(
        key: widget.qrKey,
        overlay: QrScannerOverlayShape(
            borderRadius: 10,
            borderColor: primary,
            borderLength: 30,
            borderWidth: 10,
            cutOutSize: 250),
        onQRViewCreated: _onQrViewCreate);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    widget.controller!.dispose();
    super.dispose();
  }

  _onQrViewCreate(QRViewController controller) {
    widget.controller = controller;
    controller.scannedDataStream.listen((event) {
      print(event.code);
    });
  }

  _card() {
    return Card(
      child: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.25,
            color: HexColor("##46CAA2"),
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 60,
            ),
          ),
          Expanded(
              child: ListTile(
            title: Text("Matias Zapata",
                style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: textMediumEntrada)),
            subtitle: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Detalle del participante",
                  style: TextStyle(color: primary),
                ),
                Text(
                  "Sector Super Vip Ozuna",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                Text("#3242FDSDFS4234",
                    style: TextStyle(fontWeight: FontWeight.w400))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
