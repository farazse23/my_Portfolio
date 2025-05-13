import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';

import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/constants/skill_items.dart';
import 'package:my_portfolio/constants/sms_links.dart';
import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/widgets/contact_section.dart';
import 'package:my_portfolio/widgets/custom_textField.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/footer.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/main_desktop.dart';
import 'package:my_portfolio/widgets/main_mobile.dart';
import 'package:my_portfolio/widgets/project_desktop.dart';
import 'package:my_portfolio/widgets/project_mobile.dart';
import 'package:my_portfolio/widgets/site_logo.dart';
import 'package:my_portfolio/widgets/skills_desktop.dart';
import 'package:my_portfolio/widgets/skills_mobile.dart';
import 'dart:js'as js;
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());
  
  
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize;
    final screenHeight = screenSize;
    return LayoutBuilder(
      builder: (context,constraints) {
        return Scaffold(
          key: scaffoldKey,
          endDrawer: constraints.maxWidth>=KMinDesktop?null:DrawerMobile(onNavItemTap: (int navIndex ) {
            scaffoldKey.currentState?.closeEndDrawer();
            scrollToSection(navIndex);
          },),
          backgroundColor:CustomColor.scaffoldBg,
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,

            child: Column(
              children: [
                SizedBox(
                  key: navbarKeys.first,
                ),
                //Main
                if(constraints.maxWidth>=KMinDesktop)
                  HeaderDesktop(onNavMenuTap: (int navIndex) {
                    scrollToSection(navIndex);
                  },)
                else
                  HeaderMobile(onMenuTap: (){
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                    onLogoTap: (){},),
                if(constraints.maxWidth>=KMinDesktop)
                MainDesktop()
                else
                MainMobile(),

                //SKILLS
                Container(
                 key: navbarKeys[1],
                  width: screenWidth.width,
                  padding: EdgeInsets.fromLTRB(25,20,25,60),
                  color: CustomColor.bgLight1,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                    children: [
                      //title
                      Text('What I Can Do', style: TextStyle(
                        fontSize: 24,
                        color: CustomColor.whitePrimary,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(
                        height: 50,
                      ),

                      //platform and skills
                      if(constraints.maxWidth>=KMedDesktopWidth)
                     SkillsDesktop()
                      else
                     SkillsMobile(),
                    ],
                  ),
                ),
            // project
            //     if(constraints.maxWidth>=KMedDesktopWidth)
            //    ProjectDesktop()
            //     else
            //       ProjectMobile(),
                Container(
                  key: navbarKeys[2], // Assign key to the Project Section
                  child: constraints.maxWidth >= KMedDesktopWidth
                      ? ProjectDesktop()
                      : ProjectMobile(),
                ),
                //CONTACT
                ContactSection(
                  key: navbarKeys[3],
                ),

                SizedBox(height: 30,),
                //Footer
                Footer(),
              ],
            ),
          )
        );
      }
    );
  }

  void scrollToSection(int navIndex){
    if(navIndex==4){
      js.context.callMethod('open',[SnsLinks.blog]);
      return;
    }
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
        key.currentContext!,
        duration: Duration(milliseconds: 500),curve: Curves.easeInOut);
  }

}
