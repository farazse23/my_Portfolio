import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return      Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      height: 100,
      width: double.maxFinite,
      alignment: Alignment.center,
      child: Text("Made by Faraz Ahmed with flutter 3.29.\n      All rights reserved ©copy write",style: TextStyle(
        fontWeight: FontWeight.bold,
        color: CustomColor.whiteSecondary,
      ),),
    );
  }
}
