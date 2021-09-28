import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schooling/Const/Const.dart';



class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {

  List Period=[
    {
      "period":"1",
      "class":"XI D",
      "accounting":"Accounting",
      "time":"09:00 AM"
    },
    {
      "period":"2",
      "class":"VI D",
      "accounting":"Accounting",
      "time":"10:00 AM"
    },
    {
      "period":"3",
      "class":"XII D",
      "accounting":"Accounting",
      "time":"11:00 AM"
    },
    {
      "period":"4",
      "class":"V D",
      "accounting":"Accounting",
      "time":"12:00 AM"
    },
    {
      "period":"5",
      "class":"IV D",
      "accounting":"Accounting",
      "time":"01:00 PM"
    },
    {
      "period":"6",
      "class":"X D",
      "accounting":"Accounting",
      "time":"02:00 PM"
    },
    {
      "period":"7",
      "class":"XI D",
      "accounting":"Accounting",
      "time":"03:00 PM"
    },
    {
      "period":"7",
      "class":"XII D",
      "accounting":"Accounting",
      "time":"04:00 PM"
    },
    {
      "period":"8",
      "class":"V D",
      "accounting":"Accounting",
      "time":"05:00 PM"
    },


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
  Container(
    padding: EdgeInsets.only(left: 15),
    width: MediaQuery.of(context).size.width,
    height: 40,
    color:  MyColors.Intro_Text_Color,
    child:    Row(
      children: [
        RichText(
          text: TextSpan(
            text: "To join the class",
            style: TextStyle(color:MyColors.Text_Coloe_white),

            children: <TextSpan>[
              TextSpan(text: ' Tap here', style: TextStyle(fontWeight: FontWeight.bold,color:  MyColors.Text_Coloe_white,fontSize: 15)),
            ],
          ),),
      ],
    ),
  ),

    Padding(
      padding: const EdgeInsets.only(top: 25,bottom: 10,left: 15),
      child: Text("Today",style: TextStyle( color: MyColors.Intro_button_Color,fontSize: 20),),
    ),


    Container(
      height: MediaQuery.of(context).size.height-250,
      child: Expanded(
        child: ListView.builder(
        itemCount:Period.length ,
        itemBuilder: (BuildContext context,int index){
        return
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10,top: 10),
              child: Container(
                padding: EdgeInsets.only(left: 10,right: 10,bottom: 10,top: 5),
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color:  MyColors.Intro_Text_Color

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("period :${Period[index]["period"].toString()}",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 15),),
                    Text("Time: ${Period[index]["time"]}",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 10),),
                  ],),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("Class: ${Period[index]["class"]}",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 10),),
                  ),
                    Spacer(flex: 1,),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(Period[index]["accounting"],style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 10),),
                    ),


                ],),
              ),
            ),
            Period[index]["period"]=="4"?   Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Container(
                      height: 80,

                      child: Image.asset("assets/lunch.png")),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Lunch Time",style: TextStyle(color: MyColors.Intro_Text_Color),),
                  )
                ],
              ),
            ):Container()
          ],
        );}),
      ),
    )


],),
    );
  }
}
