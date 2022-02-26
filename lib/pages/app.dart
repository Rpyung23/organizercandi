import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:organizercandi/pages/create_evento.dart';
import 'package:organizercandi/utils/dimens.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../utils/color.dart';
import 'dashboard.dart';
import 'login.dart';
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
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalMaterialLocalizations.delegate
      ],
      supportedLocales: [const Locale('en', 'ES'), const Locale('es', 'ES')],
      initialRoute: '/createEvento',
      routes: <String, WidgetBuilder>{
        '/panel': (BuildContext context) => new PanelControl(),
        '/dashboard': (BuildContext context) => new DashBoard(),
        '/login': (BuildContext context) => new Login(),
        '/createEvento': (BuildContext context) => new CreateEvent(),
      },
      theme: ThemeData(
          fontFamily: 'DMSans',
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
              backgroundColor: primary, elevation: elevation_Appbar)),
      home: Login(),
    );
  }
}
