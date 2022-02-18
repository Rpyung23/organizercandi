import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:organizercandi/utils/dimens.dart';

import '../utils/color.dart';
import 'dashboard.dart';
import 'panel_control.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      //systemNavigationBarColor: Colors.blue, // navigation bar color
      statusBarColor: primaryDark, // status bar color
    ));

    return MaterialApp(
      title: 'Organizador',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'DMSans',
          appBarTheme: AppBarTheme(
              backgroundColor: primary, elevation: elevation_Appbar)),
      home: PanelControl(),
    );
  }
}
