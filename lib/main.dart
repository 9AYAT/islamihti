import 'package:flutter/material.dart';
import 'package:islam/homes.dart';

import 'my theme.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      debugShowCheckedModeBanner: false,
        initialRoute: Home.routeName,
        routes: {Home.routeName: (context) => Home()}
    );
  }}