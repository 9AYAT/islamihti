import 'package:flutter/material.dart';
import 'package:islam/modals/Sura_modals.dart';
import 'package:islam/sura_details.dart';

class QuranTab extends StatelessWidget {
  List<String>suraName=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return
      Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("assets/images/main_ic.png"),
            Divider(
              color: Color(0XFFB7935F),
              thickness: 2,
            ),
            Text("Sura Names", style: Theme
                .of(context)
                .textTheme
                .bodyMedium,
            ),
            Divider(
              color: Color(0XFFB7935F),
              thickness: 2,
            ),
            Expanded(
              child: ListView.separated(separatorBuilder: (context, index) {
                return Divider(
                  color: Color(0xFFB7935F),
                  thickness: 1,
                  endIndent: 30,
                  indent: 30,
                );
              },
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                          Navigator.pushNamed(context, SuraDetails.routeName,
                              arguments: SuraModal(suraName[index], index)
                        );},
    child:
                        Center(
                        child: Text(suraName[index],
                            style: Theme
                                .of(context)
                                .textTheme
                                .bodySmall
                        )),
     );
                },
                itemCount: suraName.length,
              ),
            )
          ],
        ),
      );

  }
}
