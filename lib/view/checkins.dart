import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:organizercandi/utils/color.dart';
import '../utils/dimens.dart';
import 'checkins/all.dart';

class CheckIns extends StatefulWidget {
  CheckIns({Key? key}) : super(key: key);

  @override
  State<CheckIns> createState() => _CheckInsState();
}

class _CheckInsState extends State<CheckIns> {
  int _optionSelect = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TabBar(
          indicatorColor: Colors.black,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black38,
          onTap: (item) {
            setState(() {
              this._optionSelect = item;
            });
          },
          tabs: [
            Tab(
              text: 'Todos',
            ),
            Tab(
              text: 'Anteriores',
            ),
          ],
        ),
        body: Stack(
          children: [
            TabBarView(children: [
              AllCheckIns(),
              Center(
                child: Text("Anteriores"),
              )
            ]),
            Align(
              alignment: Alignment.bottomRight,
              child: _qr(),
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      //systemNavigationBarColor: Colors.blue, // navigation bar color
      statusBarColor: black, // status bar color
    ));
  }

  _view() {
    switch (this._optionSelect) {
      case 0:
        return AllCheckIns();
        break;
      case 1:
        break;
    }
  }

  _qr() {
    return Container(
      margin: EdgeInsets.all(marginBig),
      child: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/scanner");
        },
        backgroundColor: black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(RadiusBorderMedium)),
        child: Icon(Iconsax.scan),
      ),
    );
  }
}
