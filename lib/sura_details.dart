import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam/modals/Sura_modals.dart';
import 'package:islam/my%20theme.dart';

class SuraDetails extends StatefulWidget {
 static const String routeName="SuraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
 List<String>verse=[];

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as SuraModal;
    if(verse.isEmpty){
    loadFile(args.index);}
    return Container(
      decoration:BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/main.bg.png"),fit:BoxFit.fill ),
      ),
      child: Scaffold(
        appBar: AppBar(
        title: Text(args.name)
      ),
        body:ListView.separated(separatorBuilder: (context,index){
          return Divider(
            color: MyThemeData.primaryColor,
          );
        },
          itemBuilder: (context,index){
          return Center(child: Text(verse[index],textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyLarge));
        },
        itemCount: verse.length,) ,
      ),
    );
  }
  void loadFile(int index)async{
   String file=await rootBundle.loadString("assets/files/${index+1}.txt");
  List<String>suraLines= file.split("\n");
  verse=suraLines;
  print(suraLines);
  setState(() {

  });
  }
}