import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/constants/sms_links.dart';
import 'package:my_portfolio/widgets/custom_textField.dart';
import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
        color: CustomColor.bgLight1,
        child: Column(
          children: [
            Text("Get In Touch", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: CustomColor.whitePrimary,
            ),),

            SizedBox(height: 50,),
            ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 700,
                  maxHeight: 100,
                ),
                child: LayoutBuilder(builder: (context,constraints){
if(constraints.maxWidth>=KMinDesktop){
  return buildnameEmailFieldDesktop();
}else {
  return buildnameEmailFieldMobile();
}
                })
            ),
            SizedBox(height: 15,),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 700,
              ),
              child: CustomTextfield(
                hintText: "Your Message",
                maxLines: 15,
              ),
            ),
            SizedBox(height: 20,),
            //send button
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 700,
              ),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: Text("Get in Touch"),
                ),
              ),
            ),
            SizedBox(height: 30,),
            ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 300,
                ),
                child: Divider()),
            SizedBox(height: 15,),
            // SMS Icons
            Wrap(
              spacing: 12,
              runSpacing: 12,
              alignment: WrapAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    js.context.callMethod('open',[SnsLinks.github]);
                    // Action for GitHub
                  },
                  child: Image.asset(
                      "assets/github.png", width: 30, color: Colors.white),
                ),
                InkWell(
                  onTap: () {
                    js.context.callMethod('open', [SnsLinks.facebook]);
                    // Action for Facebook
                  },
                  child: Image.asset("assets/facebook.png", width: 30),
                ),

                InkWell(
                  onTap: () {
                    js.context.callMethod('open', [SnsLinks.linkedIn]);
                    // Action for LinkedIn
                  },
                  child: Image.asset("assets/linkedin.png", width: 30),
                ),

                InkWell(
                  onTap: () {
                    js.context.callMethod('open', [SnsLinks.instagram]);
                    // Action for Instagram
                  },
                  child: Image.asset("assets/instagram.png", width: 30),
                ),
              ],
            ),
          ],
        )
    );
  }
  Row buildnameEmailFieldDesktop(){
    return Row(
      children: [
        Flexible(
          child: CustomTextfield(
            hintText: "Your Name",
          ),
        ),
        SizedBox(width: 15,),
        Flexible(
          child: CustomTextfield(
            hintText: "Your Email",
          ),
        )
      ],
    );

  }


  Column buildnameEmailFieldMobile(){
    return Column(
      children: [
        Flexible(
          child: CustomTextfield(
            hintText: "Your Name",
          ),
        ),
        SizedBox(height: 15,),
        Flexible(
          child: CustomTextfield(
            hintText: "Your Email",
          ),
        )
      ],
    );

  }
}
