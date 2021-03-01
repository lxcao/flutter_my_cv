import 'package:flutter/material.dart';
import 'package:flutter_my_cv/utils/constants.dart';
import 'package:flutter_my_cv/models/Feature.dart';
import 'package:flutter_my_cv/widgets/feature_card_widget.dart';

class FeatureGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 4),
      child: GridView.builder(
          itemCount: features.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: kDefaultPadding / 4,
            crossAxisSpacing: kDefaultPadding / 4,
            childAspectRatio: 0.85,
          ),
          itemBuilder: (context, index) => FeatureCard(
                feature: features[index],
              )),
    );
  }
}
