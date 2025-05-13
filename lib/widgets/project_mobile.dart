//
//
// import 'package:flutter/material.dart';
// import 'package:my_portfolio/constants/colors.dart';
//
// class ProjectMobile extends StatelessWidget {
//   final List<Map<String, String>> projectData = [
//     {"img": "assets/projects/google.png", "title": "Google Interface"},
//     {"img": "assets/projects/Bit.png", "title": "Bit Coin Web"},
//     {"img": "assets/projects/Fin.png", "title": "Fin Win"},
//     {"img": "assets/projects/Fresh.png", "title": "Fresh Soap"},
//     {"img": "assets/projects/mobile.png", "title": "Mobile Store"},
//     {"img": "assets/projects/shoes.png", "title": "Shoes Store"},
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
//         child: Column(
//           children: [
//             // Title: "My Projects"
//             Padding(
//               padding: EdgeInsets.only(bottom: 20),
//               child: Text(
//                 "My Projects",
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: CustomColor.whitePrimary,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//
//             // Cards Column (One Card per Row)
//             Column(
//               children: projectData.map((project) {
//                 return Padding(
//                   padding: EdgeInsets.only(bottom: 20), // Space between cards
//                   child: Container(
//                     width: double.infinity,
//                     padding: EdgeInsets.all(15),
//                     decoration: BoxDecoration(
//                       color: CustomColor.bgLight2,
//                       borderRadius: BorderRadius.circular(15),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black12,
//                           blurRadius: 10,
//                           spreadRadius: 2,
//                         ),
//                       ],
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         // Image
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(10),
//                           child: Image.asset(
//                             project["img"]!,
//                             width: double.infinity,
//                             height: 150,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         SizedBox(height: 15),
//
//                         // Title
//                         Text(
//                           project["title"]!,
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                             color: CustomColor.whitePrimary,
//                           ),
//                         ),
//                         SizedBox(height: 5),
//
//                         // Description
//                         Text(
//                           "Cards are surfaces that display content and actions on a single topic.",
//                           style: TextStyle(fontSize: 14, color: CustomColor.whitePrimary),
//                         ),
//                         SizedBox(height: 15),
//
//                         // Buttons Row
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             Icon(Icons.home),
//                             SizedBox(width: 15),
//                             Icon(Icons.share),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               }).toList(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:my_portfolio/constants/colors.dart';

class ProjectMobile extends StatelessWidget {
  final List<Map<String, String>> projectData = [
    {
      "img": "assets/projects/cal.jpg",
      "title": "Calculator",
      "description": "A basic calculator with modern UI built using Flutter.",
      "link": "https://github.com/farazse23/calculator"
    },
    {
      "img": "assets/projects/whats.png",
      "title": "WhatsApp UI",
      "description": "Clone of WhatsApp UI using Flutter widgets and layout.",
      "link": "https://github.com/farazse23/whatsapp_ui"
    },
    {
      "img": "assets/projects/3d.png",
      "title": "Flutter 3D App",
      "description": "A 3D animated app showcasing Flutter’s power.",
      "link": "https://github.com/farazse23/flutter_3d_app"
    },
    {
      "img": "assets/projects/qr.png",
      "title": "QR Code Scanner & Generator",
      "description": "Scan and generate QR codes easily with Flutter.",
      "link": "https://github.com/farazse23/qr_flutter_app"
    },
    {
      "img": "assets/projects/shooping.png",
      "title": "Shopping Cart",
      "description": "A complete shopping cart UI with Firebase integration.",
      "link": "https://github.com/farazse23/shopping_cart"
    },
    {
      "img": "assets/projects/translator.jpg",
      "title": "Language Translator",
      "description": "Translate text upto one hundred best languages.",
      "link": "https://github.com/farazse23/translator_app"
    },
  ];

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            // Title: "My Projects"
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                "My Projects",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // Cards Column (One Card per Row)
            Column(
              children: projectData.map((project) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 20), // Space between cards
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: CustomColor.bgLight2,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            project["img"]!,
                            width: double.infinity,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 15),

                        // Title
                        Text(
                          project["title"]!,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.whitePrimary,
                          ),
                        ),
                        SizedBox(height: 5),

                        // Description
                        Text(
                          project["description"]!,
                          style: TextStyle(fontSize: 14, color: CustomColor.whitePrimary),
                        ),
                        SizedBox(height: 15),

                        // Action Buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: Icon(Icons.preview, color: CustomColor.whitePrimary),
                              onPressed: () {
                                // Optional: Add preview functionality
                              },
                            ),
                            SizedBox(width: 10),
                            IconButton(
                              icon: Icon(Icons.link, color: CustomColor.whitePrimary),
                              onPressed: () {
                                _launchURL(project["link"]!);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.grey[200],
      body: ProjectMobile(),
    ),
  ));
}
