import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize;
    final screenHeight = screenSize;
    return      Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    height: screenHeight.height/1.2,
    constraints: BoxConstraints(minHeight: 350),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text("Hi!\nI'm Faraz Ahmed\nA Flutter Developer" , style: TextStyle(
    color: CustomColor.whitePrimary,
    fontSize: 30,
    fontWeight: FontWeight.bold,
    height: 1.2,
    ),),
    SizedBox(
    height: 8,
    ),
    SizedBox(
    width: 250,
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
  Image.asset('assets/bgavatar.png',
  width: screenWidth.width/2,)
  ],
  ),
  );
  }
}
