import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key,
     this.controller,
     this.maxLines=1,
     this.hintText, });
  final TextEditingController? controller;
  final int maxLines;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller ,
      maxLines: maxLines,
      style: TextStyle(
        color: CustomColor.scaffoldBg,),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(15),
        filled: true,
        fillColor: CustomColor.whiteSecondary,
        focusedBorder: getInputBorder,
        enabledBorder: getInputBorder,
        border: getInputBorder,
        hintText: hintText,
        hintStyle: TextStyle(color: CustomColor.hintDark),

      ),
    );
  }
  OutlineInputBorder get getInputBorder{
    return  OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );
  }
}
