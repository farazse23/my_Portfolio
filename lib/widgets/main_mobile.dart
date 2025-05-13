import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize;
    final screenHeight = screenSize;
    return       Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: screenWidth.width,
      constraints: const BoxConstraints(minHeight: 560),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(

              shaderCallback: (Rect bounds) {
                return LinearGradient(colors: [
                  CustomColor.scaffoldBg.withOpacity(0.6),
                  CustomColor.scaffoldBg.withOpacity(0.6),

                ]).createShader(bounds);
              },
              blendMode: BlendMode.srcATop,
              child: Image.asset("assets/bgavatar.png",width: screenWidth.width/2)),
          SizedBox(
            height: 20,
          ),
          Text("Hi!\nI'm Faraz Ahmed\nA Flutter Developer" , style: TextStyle(
            color: CustomColor.whitePrimary,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            height: 1.2,
          ),),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            width: 190,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,  // Background color
                foregroundColor: Colors.white, // Text color
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12), // Padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25), // Rounded corners
                ),
              ),
              child: Text('Get in touch',style: TextStyle(fontWeight: FontWeight.w200, fontSize: 16),),
            ),
          )
        ],
      ),
    );
  }
}
