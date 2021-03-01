import 'package:flutter/material.dart';
import 'package:flutter_my_cv/pages/setting_home_page.dart';
import 'package:flutter_my_cv/pages/vehicle_location_page.dart';

class Feature {
  final String name;
  final String description;
  final String image;
  final Widget page;
  Feature({this.name, this.description, this.image, this.page});
}

List<Feature> features = [
  Feature(
    name: 'Setting',
    description: 'Configure the OBD and Cloud',
    image: 'assets/images/coding_icon2.png',
    page: SettingHomePage(),
  ),
  Feature(
    name: 'Diagnostics',
    description: 'Display the diagnostics',
    image: 'assets/images/diagnostics_icon.png',
  ),
  Feature(
    name: 'Dashboards',
    description: 'Instrument Cluster',
    image: 'assets/images/live_data_icon.png',
  ),
  Feature(
    name: 'Maps',
    description: 'Location and map',
    image: 'assets/images/map3.png',
    page: VehicleLocationPage(),
  ),
  Feature(
    name: 'Monitors',
    description: 'System monitor',
    image: 'assets/images/monitor.png',
  ),
  Feature(
    name: 'Logs',
    description: 'logs',
    image: 'assets/images/logs.png',
  ),
  Feature(
    name: 'Performance',
    description: 'Vehicle Performance',
    image: 'assets/images/performance.png',
  ),
  Feature(
    name: 'Rest',
    description: 'Have a break',
    image: 'assets/images/coffee_cup.png',
  ),
];
