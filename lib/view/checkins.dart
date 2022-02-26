import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
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
        body: _view(),
      ),
    );
  }

  _view() {
    switch (this._optionSelect) {
      case 0:
        return AllCheckIns();
        break;
      case 1:
        break;
      case 2:
        break;
    }
  }
}
