import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:organizercandi/utils/dimens.dart';

import '../utils/color.dart';

class PanelControl extends StatefulWidget {
  PanelControl({Key? key}) : super(key: key);

  @override
  State<PanelControl> createState() => _PanelControlState();
}

class _PanelControlState extends State<PanelControl> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
              child: Icon(Iconsax.arrow_left),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: DefaultTabController(
            length: 4,
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: _tabBar().preferredSize,
                child: Container(
                  height: 35,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(25)),
                  clipBehavior: Clip.antiAlias,
                  margin:
                      EdgeInsets.only(right: marginSmall, left: marginSmall),
                  child: ColoredBox(
                    color: Colors.black,
                    child: _tabBar(),
                  ),
                ),
              ),
            ),
          ),
        ),
        onWillPop: () async {
          Navigator.of(context).pop();
          return true;
        });
  }

  _tabBar() {
    return TabBar(
      indicatorColor: Colors.transparent,
      labelColor: Colors.black,
      unselectedLabelColor: Colors.white,
      indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: Colors.white),
      tabs: [
        Tab(
          text: 'Día',
        ),
        Tab(
          text: 'Hora',
        ),
        Tab(
          text: 'Semana',
        ),
        Tab(
          text: 'Mes',
        )
      ],
    );
  }
}
