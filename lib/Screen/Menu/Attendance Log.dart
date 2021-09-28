import 'package:flutter/material.dart';
import 'package:schooling/Const/Const.dart';
class AttendanceLog extends StatefulWidget {
  const AttendanceLog({Key? key}) : super(key: key);

  @override
  _AttendanceLogState createState() => _AttendanceLogState();
}

class _AttendanceLogState extends State<AttendanceLog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,

        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: InkWell(onTap: (){
            Navigator.pop(context);

          },child: Icon(Icons.arrow_back_ios,color: MyColors.Intro_button_Color,)),
        ),
        title: Text("ATTENDANCE",style: TextStyle(color: MyColors.Intro_Text_Color,fontSize: 20),),
        centerTitle: true,

      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25,left: 15,right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width*.9,
              height: 80,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    MyColors.Intro_Text_Color,
                    MyColors.Intro_button_Color
                  ]
                ),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Class XXI  D",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 15),),
                      Text("Time: 9.00 AM",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 10),),

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.download_sharp,color: MyColors.Text_Coloe_white,)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width*.9,
              height: 80,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        MyColors.Intro_Text_Color,
                        MyColors.Intro_button_Color
                      ]
                  ),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Class XX  D",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 15),),
                      Text("Time: 10.00 AM",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 10),),

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.download_sharp,color: MyColors.Text_Coloe_white,)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}