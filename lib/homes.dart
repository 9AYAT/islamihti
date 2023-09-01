import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:islam/my theme.dart';
import 'package:islam/tabs/ahadeth.dart';
import 'package:islam/tabs/quran%20tab.dart';
import 'package:islam/tabs/radio_tab.dart';
import 'package:islam/tabs/sebha.dart';
import 'package:islam/tabs/setting.dart';


class Home extends StatefulWidget {
  static const String routeName="aaa";

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  int currentIndex = 0;
  List<Widget>tabs = [
    QuranTab(),SebhaTab(),RadioTab(),SettingTab(),AhadethTab()
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Image.asset("assets/images/main.bg.png", width: double.infinity,
            fit: BoxFit.fill,),

          Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                  title: Text("islami",
                  )),
              bottomNavigationBar: BottomNavigationBar(
                // enableFeedback: false,
                currentIndex: currentIndex,
                onTap: (value) {
                  currentIndex = value;
                  setState((){});
                },
                items: [
                  BottomNavigationBarItem(icon: ImageIcon(
                    AssetImage("assets/images/quran.png"), size: 30,),
                      label: "quran",
                      backgroundColor: MyThemeData.primaryColor),
                  BottomNavigationBarItem(icon: ImageIcon(
                    AssetImage("assets/images/sebha.png"), size: 30,),
                    label: "sebha",
                    backgroundColor: MyThemeData.primaryColor,),
                  BottomNavigationBarItem(icon: ImageIcon(
                    AssetImage("assets/images/ahadeth.png"), size: 30,),
                    label: "ahadeth",
                    backgroundColor: MyThemeData.primaryColor,),
                  BottomNavigationBarItem(icon: ImageIcon(
                    AssetImage("assets/images/radio.png"), size: 30,),
                      label: "quran",
                      backgroundColor: MyThemeData.primaryColor),
                  BottomNavigationBarItem(icon: Icon(Icons.settings),
                      label: "settings",
                      backgroundColor: MyThemeData.primaryColor),
                ],
              ),
              body: tabs[currentIndex]),
        ]
    );
  }
}



