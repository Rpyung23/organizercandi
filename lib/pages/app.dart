import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:organizercandi/pages/organizador/create_organizer.dart';
import 'package:organizercandi/pages/evento/add_location.dart';
import 'package:organizercandi/pages/evento/create_evento.dart';
import 'package:organizercandi/pages/promocional/create_promocional.dart';
import 'package:organizercandi/utils/dimens.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../utils/color.dart';
import '../view/cambio_organizacion.dart';
import '../view/checkins.dart';
import '../view/config_dispo.dart';
import 'chekins/detalle_participante.dart';
import 'chekins/scanner_qr.dart';
import 'evento/finalEvent.dart';
import 'dashboard.dart';
import 'entradas/divisa.dart';
import 'entradas/entrdas.dart';
import 'entradas/pago_gratis.dart';
import 'formas.pago.dart';
import 'login.dart';
import 'login_register.dart';
import 'organizador/organizador.dart';
import 'panel_control.dart';
import 'promocional/promocional.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      //systemNavigationBarColor: Colors.blue, // navigation bar color
      statusBarColor: darker, // status bar color
    ));

    return MaterialApp(
      title: 'Organizador',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalMaterialLocalizations.delegate
      ],
      supportedLocales: [const Locale('en', 'ES'), const Locale('es', 'ES')],
      initialRoute: '/login',
      routes: <String, WidgetBuilder>{
        '/panel': (BuildContext context) => new PanelControl(),
        '/dashboard': (BuildContext context) => new DashBoard(),
        '/login': (BuildContext context) => new Login(),
        '/createEvento': (BuildContext context) => new CreateEvent(),
        '/add_new_location': (BuildContext context) => new AddNewLocation(),
        '/final_event': (BuildContext context) => new FinalEvent(),
        '/create_entrada': (BuildContext context) => new EntradasCreate(),
        '/pais_divisa': (BuildContext context) => new PaisDivisaEntrada(),
        '/pago_gratis': (BuildContext context) => new PagoGratisEvento(),
        '/list_organizador': (BuildContext context) => new ListOrganizer(),
        '/create_organizer': (BuildContext context) => new CreateOrganizer(),
        '/cambio_organizer': (BuildContext context) => new CambioOrganizador(),
        '/config_dispo': (BuildContext context) => new ConfigDispo(),
        '/formas_pago': (BuildContext context) => new FormasPago(),
        '/login_register': (BuildContext context) => new LoginRegister(),
        '/promocional': (BuildContext context) => new CodigoPromocional(),
        '/create_promocional': (BuildContext context) =>
            new CreatePromocional(),
        '/scanner': (BuildContext context) => new ScannerQr(),
        '/detalle_participante': (BuildContext context) =>
            new DetalleParticipante()
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
