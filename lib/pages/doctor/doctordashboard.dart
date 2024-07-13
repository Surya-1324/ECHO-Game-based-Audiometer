import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mario_game/pages/doctor/report.dart';

import '../../theme/color.dart';


class doctordashboard extends StatefulWidget {
  const doctordashboard({super.key});

  @override
  State<doctordashboard> createState() => _doctordashboardState();
}

class _doctordashboardState extends State<doctordashboard> {

int pageIndex=0;
  Container buildMyNavBar(BuildContext context) {
    return Container(
        height: 60,
        decoration: BoxDecoration(

          gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.centerLeft,
            end: FractionalOffset.topCenter,
          ),

          borderRadius: const BorderRadius.only(

          ),
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                icon: pageIndex == 0
                    ? const Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                  size: 35,
                )
                    : const Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              SizedBox(
                width: 25,
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                icon: pageIndex == 1
                    ? const Icon(
                  Icons.person_pin,
                  color: Colors.white,
                  size: 35,
                )
                    : const Icon(
                  Icons.person_pin,
                  color: Colors.white,
                  size: 35,
                ),
              ),


            ],
            ));
  }


  Widget getmyappointments(name,date)
  {
    return     GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>report()));
      },
      child: Card(
        color: Colors.white,
        elevation: 5,
        child: Container(

            padding: EdgeInsets.all(20),
            child:Row(
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
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>report()));
                  },
                  child: Row(children: [
                    Text('View More',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Colors.blue,fontWeight:FontWeight.w400,fontSize: 10),),
                    Icon(Icons.arrow_forward_ios_outlined,size: 10,color: Colors.black,)
                  ],),
                )
              ],)),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    var w=MediaQuery.of(context).size.width;
    var h=MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
      
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: FractionalOffset.topCenter,
              colors:[color2, color1]
            )
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(

              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                  
                  child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      Icon(Icons.menu)
                    ],),
                        SizedBox(height: 20,),
                        Row(

                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                          Container(
                            
                            height: 75,
                            width: 125,
                            decoration: BoxDecoration(border: Border.all(color: Colors.white,),borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: Center(child: Text("Appointments\n321",textAlign: TextAlign.center,style: GoogleFonts.poppins(),)),
                          ),
                          Container(

                            height: 75,
                            width: 125,
                            decoration: BoxDecoration(border: Border.all(color: Colors.white,),borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: Center(child: Text("Booked\n240",textAlign: TextAlign.center,style: GoogleFonts.poppins(),)),
                          )

                        ],),
                        Expanded(
                          child: Container(

                            child: LineChart(

                              LineChartData(


                                  borderData: FlBorderData(show: false),
                                  titlesData: FlTitlesData(
                                    leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                    rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                    bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
                                    topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                  ),

                                  lineBarsData: [
                                LineChartBarData(

                                    color: Colors.white,
                                    barWidth:1 ,
                                    isCurved: true,
                                    spots: [
                                  const FlSpot(0, 1),
                                  const FlSpot(1, 3),
                                  const FlSpot(2, 10),
                                  const FlSpot(3, 7),
                                  const FlSpot(4, 12),
                                  const FlSpot(5, 13),
                                  const FlSpot(6, 17),
                                  const FlSpot(7, 15),
                                  const FlSpot(8, 20)
                                ])
                              ]),
                            ),
                          ),
                        ),


                  ])
                      
                ),
              ),
              Container(
padding: EdgeInsets.only(left: 20,right: 20,top: 20),

                height: h/1.8,
                width: w,
                decoration: BoxDecoration(

                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))),
                child: SingleChildScrollView(
                  child: Column(children: [
                    Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Appoinments",textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.black,fontWeight:FontWeight.w700),),
                    Icon(Icons.grid_on_sharp,color: Colors.black,),



                    ],),

                    SizedBox(height: 20,),
                    getmyappointments("Sudalai Vignesh","04/09/2023"),
                    SizedBox(height: 10,),
                    getmyappointments("Surya M","04/09/2023"),
                    SizedBox(height: 10,),
                    getmyappointments("Yogeeswaran","04/09/2023"),
                    SizedBox(height: 10,),
                    getmyappointments("Vishwanath","04/09/2023"),
                    SizedBox(height: 10,),
                    getmyappointments("Sudhes","04/09/2023"),
                    SizedBox(height: 10,),
                    getmyappointments("Sathiya","04/09/2023"),

                  ],),
                ),
              )
            ],),
            
            // bottomNavigationBar:buildMyNavBar(context) ,
      
      
          )),
    );
    
    
    
  }
}
