import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:organizercandi/utils/dimens.dart';

import '../component/item_circle_porc.dart';
import '../poo/LineChart.dart';
import '../utils/color.dart';
import 'package:charts_flutter/flutter.dart' as charts;

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
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(
                  left: marginMedium, right: marginMedium, top: marginMedium),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Ventas brutas",
                            style:
                                TextStyle(fontSize: textSmall, color: black_05),
                          ),
                          Text(
                            "125.000",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: textBig,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Total Check Ins",
                            style: TextStyle(color: black_05),
                          ),
                          Text("20",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: textBig))
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: marginMedium,
                  ),
                  Container(
                    child: _TabBarContent(),
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius:
                            BorderRadius.circular(ButtonRadiusBorder)),
                    clipBehavior: Clip.antiAlias,
                  ),
                  Container(
                    height: 240,
                    width: double.infinity,
                    child: _showGrafico("#ED5734"),
                  ),
                  _listCirlces(),
                  SizedBox(
                    height: marginBig,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: marginBig, left: marginBig),
                    child: Row(
                      children: [
                        Expanded(
                            child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Ver todos",
                            style: TextStyle(
                                color: Colors.black, fontSize: textMedium),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              minimumSize: Size.fromHeight(altoButtom),
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(RadiusBorderBig),
                                  side: BorderSide(color: Colors.black))),
                        ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: marginBig,
                  ),
                  Container(
                    child: _TabBarContent(),
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius:
                            BorderRadius.circular(ButtonRadiusBorder)),
                    clipBehavior: Clip.antiAlias,
                  ),
                  Container(
                    height: 240,
                    width: double.infinity,
                    child: _showGrafico("#46CAA2"),
                  ),
                  _listCirlces2(),
                  SizedBox(
                    height: marginBig,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: marginBig, left: marginBig),
                    child: Row(
                      children: [
                        Expanded(
                            child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Ver todos",
                            style: TextStyle(
                                color: Colors.black, fontSize: textMedium),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              minimumSize: Size.fromHeight(altoButtom),
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(RadiusBorderBig),
                                  side: BorderSide(color: Colors.black))),
                        ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: marginBig,
                  ),
                ],
              ),
            ),
          ),
        ),
        onWillPop: () async {
          Navigator.of(context).pop();
          return true;
        });
  }

  _TabBarContent() {
    return DefaultTabController(
      length: 4,
      child: Container(
        padding: EdgeInsets.all(marginSmall),
        child: _tabBar(),
      ) /*Container(
          height: 35,
          decoration: BoxDecoration(color: Colors.black),
          child: _tabBar())*/
      ,
    );
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

  _listCirlces() {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      primary: false,
      children: [
        ItemCirclePorc(18, primary, "Tickets vendidos", 400, 200),
        ItemCirclePorc(25, primary, "Nicky Jam Concert", 400, 200),
        ItemCirclePorc(45, primary, "Concierto de Nicky Jam Verano", 400, 200)
      ],
    );
  }

  _listCirlces2() {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      primary: false,
      children: [
        ItemCirclePorc(18, green, "Total de Check Ins", 400, 200),
        ItemCirclePorc(25, green, "Concierto de Nicky Jam Verano ", 400, 200),
        ItemCirclePorc(45, green, "Nicky Jam Concert", 400, 200)
      ],
    );
  }

  List<charts.Series<LineChart, int>> _grafico(String hexadecimal) {
    final data = [
      new LineChart(0, 5),
      new LineChart(1, 20),
      new LineChart(2, 10),
      new LineChart(3, 7),
    ];

    return [
      charts.Series<LineChart, int>(
          id: 'sales',
          colorFn: (_, __) => charts.Color.fromHex(code: hexadecimal),
          domainFn: (LineChart line, _) => line.horario!,
          measureFn: (LineChart line, _) => line.price,
          data: data)
    ];
  }

  _showGrafico(String hexadecimal) {
    return new charts.LineChart(_grafico(hexadecimal),
        animate: true,
        defaultRenderer: new charts.LineRendererConfig(includePoints: true));
  }
}
