import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam/hadeeth_detail.dart';
import 'package:islam/my%20theme.dart';

import '../modals/hadeth_model.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
 List<HadethModal>ahadth=[];

    @override
    Widget build(BuildContext context) {
      if(ahadth.isEmpty){
      loadHadeth();}
      return Column(
        children: [Image.asset("assets/images/hadeth_bg.png"),
        Divider(
          color: MyThemeData.primaryColor,
          thickness: 2,
        ),
          Text("Ahadeth"),
          Divider(
            color: MyThemeData.primaryColor,
            thickness: 2,
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context,index){
              return InkWell(onTap: (){
                Navigator.pushNamed(context, HadethDetails.routeName,
                    arguments:ahadth[index]
                );
              },
                  child: Center(child: Text(ahadth[index].name,style: Theme.of(context).textTheme.bodyMedium,)));
            },
            itemCount: ahadth.length,
            ),
          )
        ],
      );}

    void loadHadeth()async{
      String file=await rootBundle.loadString("assets/files/ahadeth .txt");
     List<String>ahadeth= file.split("#");
     for(int i=0;i<ahadeth.length;i++){
    List <String>lines= ahadeth[i].trim().split("\n");
   String hadethTitle=lines[0];
   lines.removeAt(0);
   List<String>hadethContent=lines;
   ahadth.add(HadethModal(hadethTitle, hadethContent ));}
   setState(() {

   });
    }
  }