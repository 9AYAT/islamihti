import 'package:flutter/material.dart';
import 'dart:math' as math;



class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab>  {
  int count = 0;
  List<String> text = ['سبحان الله', 'الحمد لله', 'الله أكبر'];
  int textIndex = 0;
  void incrementCount() {
    setState(() {
      count++;

      if (count % 33 == 0) {
        textIndex = (textIndex + 1) % text.length;
      }
    });
  }
  @override

  Widget build(BuildContext context) {

    return Column(
      children: [Center(
        child: Stack(
          children: [
            Image.asset("assets/images/head sebha.png",width: 300,height: 100,),

            Image.asset("assets/images/body sebha.png",width: 280,height:380,),

    ]),
        ),
        Center(child: Text("عدد التسبيحات",style:Theme.of(context).textTheme.bodyMedium,)),
        InkWell(onTap: () {
          incrementCount();
          setState(() {});
        },
          child:Container(width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0XffB7935F),),
                child: Center(child: Text(' $count'
                  , style: TextStyle(fontSize: 20),))

            ),),
        SizedBox(width: 20,height: 5,),
        Container(
          width: 137,height: 51,decoration: BoxDecoration(borderRadius: BorderRadius.circular(80),
        color: Color(0xFFB7935F)),

          child: Center(child:Text(text[textIndex],style:TextStyle(fontSize: 20,color: Colors.white)),
        )
        ),],
    );}
  }


