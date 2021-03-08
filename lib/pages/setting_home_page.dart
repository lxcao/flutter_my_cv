// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_my_cv/pages/setting_drivingcycle_page.dart';
import 'package:flutter_my_cv/pages/setting_iot_page.dart';
import 'package:flutter_my_cv/pages/setting_obd_page.dart';
import 'package:flutter_my_cv/utils/constants.dart';
import 'package:get/get.dart';

class SettingHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildBodyColumn(context),
    );
  }

  Column buildBodyColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
          ),
          child: Text(
            'OBDII',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(
          thickness: 2.0,
          color: Theme.of(context).primaryColorLight,
        ),
        Container(
          padding: EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
          ),
          color: Theme.of(context).cardColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Adapter',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(SettingOBDPage());
                  },
                  child: Row(
                    children: [
                      Text(
                        'IOS-Link',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Divider(
          thickness: 2.0,
          color: Theme.of(context).primaryColorLight,
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
          ),
          child: Text(
            'IOT',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(
          thickness: 2.0,
          color: Theme.of(context).primaryColorLight,
        ),
        Container(
          padding: EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
          ),
          color: Theme.of(context).cardColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cloud',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () => Get.to(SettingIOTPage()),
                  child: Row(
                    children: [
                      Text(
                        'AWS-IOT',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Divider(
          thickness: 2.0,
          color: Theme.of(context).primaryColorLight,
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
          ),
          child: Text(
            'Driving Cycle',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(
          thickness: 2.0,
          color: Theme.of(context).primaryColorLight,
        ),
        Container(
          padding: EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
          ),
          color: Theme.of(context).cardColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'GNSS',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () => Get.to(SettingDrivingCyclePage()),
                  child: Row(
                    children: [
                      Text(
                        'Geo-Locator',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Divider(
          thickness: 2.0,
          color: Theme.of(context).primaryColorLight,
        ),
      ],
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).cardColor,
      title: Text(
        'Setting',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
    );
  }
}
