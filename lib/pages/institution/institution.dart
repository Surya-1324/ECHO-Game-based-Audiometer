import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mario_game/game/widgets/main_menu_overlay.dart';
import 'package:mario_game/theme/color.dart';


class institutiondashboard extends StatefulWidget {
  const institutiondashboard({super.key});

  @override
  State<institutiondashboard> createState() => _institutiondashboardState();
}

class _institutiondashboardState extends State<institutiondashboard> {



  Widget getmystudents(name,date)
  {
    return     GestureDetector(
      onTap: (){
        // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>report()));
      },


        child:
            Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
              
                  Container(
                    padding:EdgeInsets.all(5),
                    decoration: BoxDecoration(
              
                        borderRadius: BorderRadius.circular(100),
                        gradient: LinearGradient(begin: Alignment.centerLeft,
                            end: Alignment.bottomRight,
              
                            colors: [
                              color1,color2
                            ])),
                    child: Icon(Icons.person),
              
              
              
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name,textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Colors.black,fontWeight:FontWeight.w500),),
                      Text(date,textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Colors.grey,fontWeight:FontWeight.w400),),
                    ],),
                  Column(children: [
                    Icon(Icons.check_circle,color: Colors.green,)
                  ],),
                  Column(children: [
                    Icon(Icons.remove_red_eye_outlined,color: Colors.black,)
                  ],)
                ],),


    );
  }

  List<FlSpot> data = [
    FlSpot(1, 35),
    FlSpot(2, 28),
    FlSpot(3, 45),
    FlSpot(4, 20),
    FlSpot(5, 49),
  ];

  @override
  Widget build(BuildContext context) {
    var w=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 20,top: 30,right: 20,bottom: 10),
          
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Icon(Icons.menu,color: Colors.black,size: 25,),
                Text("Dashboard",style: GoogleFonts.poppins(color: Colors.black,fontSize: 20),),
                Icon(Icons.notifications_none,color: Colors.black,size: 25,),
              ],),
          SizedBox(height: 10,),
          Card(color: Colors.white,

            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),color: Colors.white,),
              child: Column(
                children: [

                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("No.of Students",textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,),),Text("Date",textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,),),],),
                  ),
                  Container(

                    height: 200,width: w-40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),color: Colors.white,),
                  padding: EdgeInsets.all(20),
                  child: LineChart(

                    LineChartData(

                        gridData: FlGridData(show: false),
                        borderData: FlBorderData(show: false),

                        titlesData: FlTitlesData(
                          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
                          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                          bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
                          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                        ),
                        lineBarsData: [
                      LineChartBarData(

                          dotData: FlDotData(show: false),
                          gradient: LinearGradient(colors: [
                            color1,color2
                          ]),
                          spots: [
                        const FlSpot(0, 1),
                        const FlSpot(1, 5),
                        const FlSpot(2, 10),
                        const FlSpot(3, 7),
                        const FlSpot(4, 3),
                        const FlSpot(5, 13),
                        const FlSpot(6, 17),
                        const FlSpot(7, 2),
                        const FlSpot(8, 20)
                      ])
                    ]),
                  ),
                  ),
                ],
              ),
            ),
          ),
              SizedBox(height: 10,),
          
          
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [


                      Container(
                        width: (w-80)/2,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.0),
                          gradient: LinearGradient(
                            colors: [
                              Colors.amber,
                              Colors.orange
                            ]
                          )
                        ),

                        child: Text("Total Students\n320",textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500,),),),
                    ],
                  ),
                ),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  child: Container(

                    width: (w-80)/2,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        gradient: LinearGradient(
                            colors: [
                              Colors.blue,
                              Colors.deepPurple
                            ]
                        )
                    ),

                    child: Text("Total Students\n320",textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500,),),),
                )

              ],),
SizedBox(height: 20,),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  child: SingleChildScrollView(
                    child: Container(

                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)),
                      child: Column(children: [
                    SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [Text("\t\t\tName",textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,),),SizedBox(width: 100,),Text("Status",textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,),),Text("view",textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,),),],),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: SingleChildScrollView(
                        child: Column(
                        
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            getmystudents("Jerin", "04/02/2024"),
                        SizedBox(height: 10,),
                            getmystudents("Surya", "04/02/2024"),
                            SizedBox(height: 10,),
                            getmystudents("Yogees", "04/02/2024"),
                        ],),
                      ),
                    ),


                    
                    ],),),
                  ),
                )

          
          
            ],),
          ),
        ),
        
      ),
    );
  }
}
