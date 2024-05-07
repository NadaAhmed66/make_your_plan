import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:plan/button.dart';

class chooseyourplan extends StatefulWidget {
  const chooseyourplan({super.key});

  @override
  State<chooseyourplan> createState() => _chooseyourplanState();
}

class _chooseyourplanState extends State<chooseyourplan> {
final List questions=[
  "الشعبة",
  "الوقت",
  "الاستراحة",
  "مدة_الدراسة",
  "ضعيف لغه عربيه",
 "ضعيف لغه انجليزيه",
 "ضعيف لغه تانيه",
 "ضعيف كيمياء",
 "ضعيف فيزياء",
 "ضعيف احياء",
 "ضعيف جيولوجيا",
 " ضعيف رياضيات باحته",
 "ضعيف رياضيات تطبيقيه",
 "ضعيف علم نفس و اجتماع ",
 "ضعيف تاريخ",
 " ضعيف جغرافيا",
 "ضعيف فلسفه و منطق",
];
final List options=[
  ["ادبي","علوم","رياضة"],
  ["مساءا","صباحا"],
  ["${0.5}ساعة","${1}ساعة"],
  ["${3}ساعة","${2}ساعة"],
  ["${0}","${1}"],
  ["${0}","${1}"],
  ["${0}","${1}"],
  ["${0}","${1}"],
  ["${0}","${1}"],
  ["${0}","${1}"],
  ["${0}","${1}"],
  ["${0}","${1}"],
  ["${0}","${1}"],
  ["${0}","${1}"],
  ["${0}","${1}"],
  ["${0}","${1}"],
  ["${0}","${1}"],
];
Future postselected()async{
  Map request={
  "الشعبة": "ادبي",
  "مدة_الدراسة": 3,
  "الاستراحه": 0.5,
  "الوقت": "صباحا",
  "ضعيف_لغه_عربيه": 0,
  "ضعيف_لغه_انجليزيه": 0,
  "ضعيف_لغه_تانيه": 0,
  "ضعيف_كيمياء": 0,
  "ضعيف_فيزياء": 0,
  "ضعيف_احياء": 0,
  "ضعيف_جيولوجيا": 0,
  "ضعيف_رياضيات_باحتة": 0,
  "ضعيف_رياضيات_تطبيقيه": 0,
  "ضعيف_علم_نفس_واجتماع": 0,
  "ضعيف_تاريخ": 0,
  "ضعيف_جغرافيا": 0,
  "ضعيف_فلسفة_ومنطق": 0
}

}
int question=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      

bottomSheet: question!=-1?buttonsheet(title: questions[question],
options: options[question], 
onClickConfirm: () {
  setState(() {
    if (question>=questions.length-1) {
      question=-1;
    } else {
      question++;

    }
  });
},
onClickback: () {
  setState(() {
    question--;
  });
},
)
:null,
);
}
}
