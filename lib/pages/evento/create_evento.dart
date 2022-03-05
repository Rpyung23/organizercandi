import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:organizercandi/utils/color.dart';

import '../../utils/dimens.dart';
import '../../view/createEvent/description_event.dart';
import '../../view/createEvent/fecha_event.dart';
import '../../view/createEvent/name_event.dart';
import '../../view/createEvent/ubication_event.dart';

class CreateEvent extends StatefulWidget {
  PageController controllerPageView = PageController();
  int pageCount = 0;
  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {
                  _NextPreviewController();
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black87,
                )),
            elevation: 0,
          ),
          body: Stack(
            children: [
              PageView(
                controller: widget.controllerPageView,
                children: <Widget>[
                  CreateNameEvent(),
                  CreateDescriptionEvent(),
                  CreateFechaEvent(),
                  UbicationEvent(),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: _elevatedButtonNext(),
              )
            ],
          ),
        ),
        onWillPop: () async {
          widget.pageCount = widget.pageCount - 1;
          _NextPreviewController();
          return false;
        });
  }

  _elevatedButtonNext() {
    return Container(
      margin: EdgeInsets.all(marginBig),
      child: FloatingActionButton(
        onPressed: () {
          widget.pageCount = widget.pageCount + 1;
          _NextPreviewController();
        },
        backgroundColor: primary,
        elevation: 1,
        child: Icon(Iconsax.arrow_right_14),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(RadiusBorderMedium)),
      ),
    );
  }

  void _NextPreviewController() {
    print("PAGECOUNT : " + widget.pageCount.toString());
    if (widget.pageCount == 4) {
      Navigator.of(context).pop();
      Navigator.of(context).pushNamed("/final_event");
    } else {
      if (widget.pageCount == 0) {
        Navigator.of(context).pop();
      } else if (widget.pageCount < 3) {
        //widget.pageCount = widget.pageCount - 1;
        widget.controllerPageView.jumpToPage(widget.pageCount);
      }
    }
  }
}
