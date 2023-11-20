import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persona_arrk/constants/colors.dart';
import 'package:persona_arrk/constants/styles.dart';
import 'package:persona_arrk/utils/widgets/custom_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        getTitleWidgets(),
        addVerticalSpace(12),
        getCarAlertsWidgets(screenHeight / 3.5, screenWidth),
        addVerticalSpace(24),
        getBatteryInfoWidgets(screenWidth / 1.8),
        addVerticalSpace(32),
        getAdditionalWidgets(),
        addVerticalSpace(24),
        getFavoritesWidgets(screenWidth/2.3)
      ],
    );
  }

  getTitleWidgets() {
    return Column(
      children: [
        addVerticalSpace(24),
        const Icon(Icons.energy_savings_leaf_outlined, color: kGreenColor, size: 32),
        addVerticalSpace(4),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello ",
              style: kMediumWhiteTextStyle,
            ),
            Text(
              'Andrei',
              style: kMediumGreenTextStyle,
            )
          ],
        )
      ],
    );
  }

  getCarAlertsWidgets(double height, double width) {
    return Column(
      children: [
        Container(color: kGreenColor, height: height, width: width),
      ],
    );
  }

  getBatteryInfoWidgets(double width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          color: kGreenColor,
          height: 60,
          width: width,
        ),
        Container(
            padding: kSmallPaddingAll,
            decoration: kCircleBoxDecoration,
            child: const Icon(Icons.electric_bolt_outlined, color: kWhiteColor, size: 32))
      ],
    );
  }

  getAdditionalWidgets() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            padding: kSmallPaddingAll,
            decoration: kCircleBoxDecoration,
            child: const Icon(Icons.view_headline, color: kWhiteColor, size: 32)),
        Container(
            padding: kSmallPaddingAll,
            decoration: kCircleBoxDecoration,
            child: const Icon(Icons.lock_open, color: kWhiteColor, size: 32)),
        Container(
            padding: kSmallPaddingAll,
            decoration: kCircleBoxDecoration,
            child: const Icon(Icons.beach_access_outlined, color: kWhiteColor, size: 32)),
        Container(
            padding: kSmallPaddingAll,
            decoration: kCircleBoxDecoration,
            child: const Icon(Icons.add_alert_outlined, color: kWhiteColor, size: 32))
      ],
    );
  }

  getFavoritesWidgets(double width) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Your favorites', style: kMediumWhiteTextStyle,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(height: width, width: width, color: kGreenColor),
              Container(height: width, width: width, color: kGreenColor)
            ],
          )
        ],
      ),
    );
  }
}
