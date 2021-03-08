import 'package:flutter/material.dart';
import 'package:flutter_my_cv/models/Feature.dart';
import 'package:get/get.dart';

class FeatureCard extends StatelessWidget {
  final Feature feature;
  FeatureCard({required this.feature});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(feature.page),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              feature.image,
              width: 80,
              height: 80,
              color: Theme.of(context).accentColor,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              feature.name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
