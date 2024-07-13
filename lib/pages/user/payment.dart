import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mario_game/pages/user/paymentsuccesspage.dart';

import '../../theme/color.dart';


class paymentpage extends StatefulWidget {
  const paymentpage({super.key});

  @override
  State<paymentpage> createState() => _paymentpageState();
}

class _paymentpageState extends State<paymentpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            // Below is the code for Linear Gradient.
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF5E2FE3), Color(0xFF48A2EE)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/3,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text('Total Amount',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),),
                      ),
                      SizedBox(height: 10,),

                      Align(
                        alignment: Alignment.center,
                        child: Text('Rs. 500',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white,fontSize: 24,),),),
                      ),
                      SizedBox(height: 10,),
                      Align(
                        alignment: Alignment.center,
                        child: Text('Appointment Booking',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text('Date : 10th Feb 2023',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white,fontSize: 16,),),),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text('Time : 10:00AM',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white,fontSize: 16,),),),
                      ),



                    ],
                  ),
                )
                ,
                Container(
                  height: MediaQuery.of(context).size.height/1.5,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Payment',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),),
                        ),

                        GestureDetector(

                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>paymentsuccesspage()));

                          },
                          child: Card(
                            color: Colors.white,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                Container(child: Row(children: [
                                  Image(image: AssetImage('assets/upi.png')),
                                  SizedBox(width: 10,),
                                  Text("UPI",style: GoogleFonts.poppins(color: Colors.black),),


                                ],),),
                                Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 15,)

                                                      ],),
                            ),),
                        ),


                        SizedBox(height: 20,),
                        GestureDetector(

                          onTap: (){

Navigator.of(context).push(MaterialPageRoute(builder: (context)=>paymentsuccesspage()));
                          },
                          child: Card(
                            color: Colors.white,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(child: Row(children: [
                                    Image(image: AssetImage('assets/visa.png')),
                                    SizedBox(width: 10,),
                                    Text("UPI",style: GoogleFonts.poppins(color: Colors.black),),


                                  ],),),
                                  Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 15,)

                                ],),
                            ),),
                        ),


                        SizedBox(height: 20,),
                        GestureDetector(
                          onTap: (){


                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>paymentsuccesspage()));},
                          child: Card(
                            color: Colors.white,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(child: Row(children: [
                                    Image(image: AssetImage('assets/mastercard.png')),
                                    SizedBox(width: 10,),
                                    Text("UPI",style: GoogleFonts.poppins(color: Colors.black),),


                                  ],),),
                                  Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 15,)

                                ],),
                            ),),
                        ),


                        SizedBox(height: 20,),
                        GestureDetector(
                          onTap: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>paymentsuccesspage()));},
                          child: Card(
                            color: Colors.white,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(child: Row(children: [
                                    Image(image: AssetImage('assets/bank.png')),
                                    SizedBox(width: 10,),
                                    Text("UPI",style: GoogleFonts.poppins(color: Colors.black),),


                                  ],),),
                                  Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 15,)

                                ],),
                            ),),
                        ),


                        SizedBox(height: 20,),

                        // GestureDetector(
                        //     onTap: (){
                        //       // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CarRaceHomePage()));
                        //     },
                        //     child: Container(
                        //       padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                        //       decoration: BoxDecoration(
                        //
                        //           borderRadius: BorderRadius.circular(20),
                        //           gradient: LinearGradient(colors: [
                        //             color1,color2
                        //           ]
                        //
                        //           )),
                        //       child: Text("Book Appoinment",style: GoogleFonts.poppins(color: Colors.white),),)),



                      ],
                    ),
                  ),
                )
              ],
            ),),
        ),
      ),
    );
  }
}
