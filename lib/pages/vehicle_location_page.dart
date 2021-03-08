// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_my_cv/utils/urls.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:latlong/latlong.dart';
import '../utils/urls.dart';
import '../utils/maps.dart';

class VehicleLocationPage extends StatefulWidget {
  @override
  _VehicleLocationState createState() => _VehicleLocationState();
}

class _VehicleLocationState extends State<VehicleLocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          FlutterMap(
            options: MapOptions(
              zoom: 13.0,
              center: LatLng(31.22, 121.55),
            ),
            layers: [
              TileLayerOptions(
                //GaoDe
                urlTemplate: Url.gaoDeUrlTemplate,
                subdomains: Map.gaoDeMapSubDomain,
                //MapBox
/*             urlTemplate:
                  Url.mapBoxUrlTemplate,
              additionalOptions: {
                'accessToken':
                    Secret.accessToken,
                'id': Map.mapBoxMapId,
              }, */
              ),
              MarkerLayerOptions(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(31.22, 121.55),
                    builder: (context) => Container(
                      child: IconButton(
                          icon: Icon(FontAwesomeIcons.car),
                          color: Color(0xFF6200EE),
                          iconSize: 25.0,
                          onPressed: () {
                            _showLocationDetail(context);
                          }),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 100.0,
            width: 100.0,
            child: IconButton(
              //padding: EdgeInsets.only(left: 10.0),
              onPressed: () => Get.back(),
              icon: Icon(Icons.arrow_back_ios),
              iconSize: 30.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

_showLocationDetail(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Container(
          width: double.infinity,
          height: 100.0,
          color: Colors.white,
          child: Center(
              child: Text(
            "Bottom Sheet",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).accentColor,
            ),
          )),
        );
      });
}
