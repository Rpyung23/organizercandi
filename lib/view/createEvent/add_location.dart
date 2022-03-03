import 'dart:async';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:organizercandi/utils/color.dart';
import 'package:organizercandi/utils/dimens.dart';

class AddNewLocation extends StatefulWidget {
  String StyleMap = '';
  bool checkBox = false;
  Completer<GoogleMapController> _controller = Completer();

  CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  State<AddNewLocation> createState() => _AddNewLocationState();
}

class _AddNewLocationState extends State<AddNewLocation> {
  @override
  void initState() {
    super.initState();
    _setMapStyle();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
            body: CustomScrollView(
          slivers: [
            SliverAppBar(
              flexibleSpace: FlexibleSpaceBar(
                background: mapa(),
              ),
              pinned: true,
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.check))
              ],
              expandedHeight: MediaQuery.of(context).size.height * 0.35,
            ),
            SliverList(delegate: SliverChildListDelegate([textField()])),
          ],
        )),
        onWillPop: () async {
          Navigator.of(context).pop();
          return true;
        });
  }

  Future _setMapStyle() async {
    widget.StyleMap = await rootBundle.loadString('assets/style.json');
    final controller = await widget._controller.future;
    controller.setMapStyle(widget.StyleMap);
  }

  textField() {
    return Container(
      margin:
          EdgeInsets.only(right: marginBig, left: marginBig, bottom: marginBig),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.black87),
                //hintText: 'Introduce un lugar',
                labelText: 'Lugar',
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: primary))),
          ),
          TextFormField(
            decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.black87),
                //hintText: 'Introduce un lugar',
                labelText: 'País',
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: primary))),
          ),
          TextFormField(
            decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.black87),
                //hintText: 'Introduce un lugar',
                labelText: 'Linea de dirección 1',
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: primary))),
          ),
          TextFormField(
            decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.black87),
                //hintText: 'Introduce un lugar',
                labelText: 'Linea de dirección 2',
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: primary))),
          ),
          TextFormField(
            decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.black87),
                //hintText: 'Introduce un lugar',
                labelText: 'Ciudad',
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: primary))),
          ),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.black87),
                      //hintText: 'Introduce un lugar',
                      labelText: 'Región',
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black87)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primary))),
                ),
              ),
              SizedBox(
                width: marginMedium,
              ),
              Expanded(
                  child: TextFormField(
                decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.black87),
                    //hintText: 'Introduce un lugar',
                    labelText: 'Código postal',
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black87)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primary))),
              ))
            ],
          ),
          SizedBox(
            height: marginBig,
          ),
          ListTile(
            contentPadding: EdgeInsets.all(0),
            title: Text("Mapa"),
            trailing: Checkbox(
                value: widget.checkBox,
                activeColor: Colors.black87,
                onChanged: (value) {
                  setState(() {
                    widget.checkBox
                        ? widget.checkBox = false
                        : widget.checkBox = true;
                  });
                }),
            subtitle: Text("Mostrar mapa de asientos en la pagina de evento."),
          )
        ],
      ),
    );
  }

  mapa() {
    return Container(
        height: MediaQuery.of(context).size.height * 0.35,
        width: double.infinity,
        child: GoogleMap(
          mapType: MapType.normal,
          zoomControlsEnabled: false,
          initialCameraPosition: widget._kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            widget._controller.complete(controller);
          },
        ));
  }
}
