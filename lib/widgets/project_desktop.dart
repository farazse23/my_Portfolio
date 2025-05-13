// import 'package:flutter/material.dart';
// import 'package:my_portfolio/constants/colors.dart';
//
// class ProjectDesktop extends StatelessWidget {
//   final List<Map<String, String>> projectData = [
//     {"img": "assets/projects/google.png", "title": "Calculator"},
//     {"img": "assets/projects/Bit.png", "title": "WhatsApp UI"},
//     {"img": "assets/projects/Fin.png", "title": "Flutter 3D App"},
//     {"img": "assets/projects/Fresh.png", "title": "QR Code Scanner & Generator"},
//     {"img": "assets/projects/mobile.png", "title": "Shopping Cart"},
//     {"img": "assets/projects/shoes.png", "title": "Language Translator"},
//   ];
//   final scrollController = ScrollController();
//   final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: [
//           // Title: "My Projects"
//           Padding(
//             padding: EdgeInsets.only(top: 40),
//             child: Text(
//               "My Projects",
//               style: TextStyle(
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//                 color: CustomColor.whitePrimary,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ),
//           SizedBox(height: 20), // Space between title and cards
//
//           // Cards Container
//           Container(
//             width: 960, // Adjust to fit three cards per row
//             padding: EdgeInsets.symmetric(vertical: 50), // Added top & bottom margin
//             child: Wrap(
//               spacing: 30, // Space between cards horizontally
//               runSpacing: 30, // Space between rows
//               alignment: WrapAlignment.center,
//               children: projectData.map((project) {
//                 return Container(
//                   width: 300, // Card width
//                   padding: EdgeInsets.all(15),
//                   decoration: BoxDecoration(
//                     color: CustomColor.bgLight2,
//                     borderRadius: BorderRadius.circular(15),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black12,
//                         blurRadius: 10,
//                         spreadRadius: 2,
//                       ),
//                     ],
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // Image
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(10),
//                         child: Image.asset(
//                           project["img"]!,
//                           width: double.infinity,
//                           height: 150,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       SizedBox(height: 15),
//
//                       // Title
//                       Text(
//                         project["title"]!,
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                           color: CustomColor.whitePrimary,
//                         ),
//                       ),
//                       SizedBox(height: 5),
//
//                       // Description
//                       Text(
//                         "Cards are surfaces that display content and actions on a single topic.",
//                         style: TextStyle(fontSize: 14, color: CustomColor.whitePrimary),
//                       ),
//                       SizedBox(height: 15),
//
//                       // Buttons Row
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Icon(Icons.home),
//
//                           SizedBox(width: 15),
//                          Icon(Icons.share)
//
//                         ],
//                       ),
//                     ],
//                   ),
//                 );
//               }).toList(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDesktop extends StatelessWidget {
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

  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text(
              "My Projects",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 960,
            padding: EdgeInsets.symmetric(vertical: 50),
            child: Wrap(
              spacing: 30,
              runSpacing: 30,
              alignment: WrapAlignment.center,
              children: projectData.map((project) {
                return Container(
                  width: 300,
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
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          project["img"]!,
                          width: double.infinity,
                          height: 200,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        project["title"]!,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        project["description"]!,
                        style: TextStyle(
                          fontSize: 14,
                          color: CustomColor.whitePrimary,
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // Preview Icon
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                // TODO: Add preview logic here (maybe a dialog or route)
                              },
                              child: Icon(Icons.preview, color: CustomColor.whitePrimary),
                            ),
                            onHover: (event) {
                              // Optional: Add logic if you want to do something on hover
                            },
                          ),
                          SizedBox(width: 15),

                          // Share/Link Icon
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () => _launchURL(project["link"]!),
                              child: StatefulBuilder(
                                builder: (context, setState) {
                                  bool isHovering = false;
                                  return MouseRegion(
                                    onEnter: (_) => setState(() => isHovering = true),
                                    onExit: (_) => setState(() => isHovering = false),
                                    child: Icon(
                                      Icons.link,
                                      color: isHovering ? Colors.blue : CustomColor.whitePrimary,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.grey[200],
      body: ProjectDesktop(),
    ),
  ));
}


