import 'package:flutter/material.dart';
import 'package:islam/modals/hadeth_model.dart';
import 'package:islam/my%20theme.dart';

class HadethDetails extends StatelessWidget {
  static const routeName="kk";

  @override

  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as HadethModal;
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/main.bg.png"),fit: BoxFit.fill)
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.name),),
          body:Container(
            padding: EdgeInsets.all(22),
            margin: EdgeInsets.symmetric(horizontal: 22,vertical: 11),
            decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(22),
            border: Border.all(color: MyThemeData.primaryColor),),
            child: ListView.builder(
              itemBuilder: (context,index){
              return Center(child: Text(args.content[index],textAlign: TextAlign.center,));
    },itemCount: args.content.length,
        ),
          ),
      ),
    );
  }
}
