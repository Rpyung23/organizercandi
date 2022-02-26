import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../utils/color.dart';
import '../utils/dimens.dart';

class ComponentFechas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: black_custom,
          borderRadius: BorderRadius.circular(RadiusBorderMedium)),
      child: Row(
        children: [
          Expanded(
              child: TextButton.icon(
                  onPressed: () {
                    _showCalendar(context);
                  },
                  icon: Icon(Iconsax.calendar_2, color: Colors.white),
                  label: Text(
                    "Día",
                    style: TextStyle(color: Colors.white),
                  ))),
          Container(
            width: 1.5,
            height: 25,
            color: Colors.white,
          ),
          Expanded(
              child: TextButton.icon(
                  onPressed: () {
                    _showTimer(context);
                  },
                  icon: Icon(Iconsax.timer_1, color: Colors.white),
                  label: Text("Día", style: TextStyle(color: Colors.white))))
        ],
      ),
    );
  }

  Future<DateTime?> _showCalendar(context) async {
    return await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        helpText: '',
        locale: Locale('es', ''),
        firstDate: DateTime(1998, 1, 1),
        lastDate: DateTime(2030, 12, 12),
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData.dark().copyWith(
              primaryColorDark: Colors.white,
              accentColor: Colors.white,
              hintColor: Colors.white,
              colorScheme: ColorScheme.dark(
                primary: purple, // color botones y circle select
                surface: primary,
                onPrimary: Colors.white, //text color de fecha selecionada
                onSurface: Colors.black, //text color
              ),
              dialogBackgroundColor: Colors.white,
            ),
            child: child!,
          );
        });
  }

  /**
   *               colorScheme: ColorScheme.dark(
                primary: purple, // color botones y circle select
                surface: primary,
                onPrimary: Colors.white, //text color de fecha selecionada
                onSurface: Colors.black, //text color
   * 
   * 
   * **/

  Future<TimeOfDay?> _showTimer(context) async {
    return await showTimePicker(
        context: context,
        initialTime: TimeOfDay(hour: 7, minute: 00),
        initialEntryMode: TimePickerEntryMode.dial,
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData.dark().copyWith(
              primaryColorDark: Colors.white,
              hintColor: Colors.white,
              colorScheme: ColorScheme.dark(
                primary: purple, // color botones y circle select
                surface: Colors.white,
                onPrimary: Colors.black, //text color de fecha selecionada
                onSurface: Colors.black, //text color
              ),
              dialogBackgroundColor: Colors.white,
            ),
            child: child!,
          );
        });
  }
}
