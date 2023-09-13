
import 'package:flutter/material.dart';
import 'package:islam/MY%20Provide.dart';
import 'package:islam/hadeeth_detail.dart';
import 'package:islam/homes.dart';
import 'package:islam/sura_details.dart';
import 'package:provider/provider.dart';
import 'my theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(
      ChangeNotifierProvider<MyProvider>(
        create:(context)=>MyProvider() ,
          child: const MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return MaterialApp(localizationsDelegates: [
      AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        ],
      locale: Locale(provider.language),
      supportedLocales: [
      Locale('en'), // English
      Locale('ar'),
    ],
      theme:MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.themeMode,
      debugShowCheckedModeBanner: false,
        initialRoute: Home.routeName,
        routes: {Home.routeName: (context) => Home(),
        SuraDetails.routeName:(context)=>SuraDetails(),
        HadethDetails.routeName:(context)=>HadethDetails()}
    );
  }}