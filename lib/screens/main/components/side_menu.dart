import 'package:Portfolio/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:js' as js;

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Birthday",
                      text: "10 Feb 2002",
                    ),
                    AreaInfoText(
                      title: "Mobile No.",
                      text: "+91 8691955046",
                    ),
                    AreaInfoText(
                      title: "Residence",
                      text: "India",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Mumbai",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "20",
                    ),
                    AreaInfoText(
                      title: "Email",
                      text: "jaydippawar.co.in@gmail.com",
                    ),
                    AreaInfoText(
                      title: "Website",
                      text: "under construction",
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {
                        js.context.callMethod('open', ['https://drive.google.com/uc?export=download&id=1RE_TRTghUEFruNPsierq4INBvc_7mIqS','_self']);
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          Material(
                            color: Colors.transparent,
                            child: IconButton(
                              onPressed: () {
                                js.context.callMethod('open', ['https://www.linkedin.com/in/jaydippawar/']);
                              },
                              icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: IconButton(
                              onPressed: () {
                                js.context.callMethod('open', ['https://github.com/jaydip-pawar']);
                              },
                              icon: SvgPicture.asset("assets/icons/github.svg", color: Colors.white54, width: 15, height: 15),
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: IconButton(
                              onPressed: () {
                                js.context.callMethod('open', ['https://www.instagram.com/jaydip_pawar_96k/']);
                              },
                              icon: SvgPicture.asset("assets/icons/instagram.svg", color: Colors.white54, width: 15, height: 15),
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: IconButton(
                              onPressed: () {
                                js.context.callMethod('open', ['https://twitter.com/JaydipP_']);
                              },
                              icon: SvgPicture.asset("assets/icons/twitter.svg", color: Colors.white54, width: 15, height: 15),
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: IconButton(
                              onPressed: () {
                                js.context.callMethod('open', ['https://www.facebook.com/jaydip.pawar.96k/']);
                              },
                              icon: SvgPicture.asset("assets/icons/facebook.svg", color: Colors.white54, width: 15, height: 15),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
