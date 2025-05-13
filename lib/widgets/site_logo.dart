import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key,this.onTap});
final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return    GestureDetector(
      onTap: onTap,
      child: Text('FA',style:TextStyle(fontWeight: FontWeight.bold,
          fontSize: 22,
          decoration: TextDecoration.underline,
          color: CustomColor.yellowSecondary),),
    );
  }
}
