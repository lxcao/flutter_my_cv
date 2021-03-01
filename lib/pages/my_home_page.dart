import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_cv/utils/constants.dart';
import 'package:flutter_my_cv/widgets/feature_grid_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: FeatureGrid(),
      bottomNavigationBar: buildBottomNavigationBar(context),
    );
  }

  Container buildBottomNavigationBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
        bottom: kDefaultPadding / 2,
        top: kDefaultPadding,
      ),
      //height: 80,
      color: Theme.of(context).cardColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(
              //CupertinoIcons.car_detailed,
              FontAwesomeIcons.carSide,
              color: Theme.of(context).accentColor,
              size: 25,
            ),
            onPressed: () {},
          ),
          FlatButton(
            color: Theme.of(context).buttonColor,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Text(
              'Connect',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          IconButton(
            icon: Icon(
              //CupertinoIcons.question_circle,
              FontAwesomeIcons.questionCircle,
              color: Theme.of(context).accentColor,
              size: 25,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).cardColor,
      title: Text(
        'Not Connected',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
    );
  }
}
