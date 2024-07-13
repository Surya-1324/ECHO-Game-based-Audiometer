import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mario_game/theme/color.dart';

import '../doctor.dart';

class reportsharingpage extends StatefulWidget {
  const reportsharingpage({super.key});

  @override
  State<reportsharingpage> createState() => _reportsharingpageState();
}

class _reportsharingpageState extends State<reportsharingpage> {




  
  @override
  Widget build(BuildContext context) {
    var w=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(

      backgroundColor: Colors.white,
      body: Column(children: [
      
      Container(
        height: 50,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Shadow color
                blurRadius: 10.0, // Blur radius
                spreadRadius: 2.0, // Spread radius
                offset: Offset(0.0, 4.0), // Shadow offset
              ),
            ],
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
            gradient:LinearGradient(colors: [

            color1,
              color2
        ]

        ) ),
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: w,child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [GestureDetector(
            onTap:(){

              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back))],),),
        
        
        
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            Align(alignment:Alignment.centerLeft,child: Text("Sudalai Vignesh R",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600),)),
            Align(alignment:Alignment.centerLeft,child: Text("Age : 19",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500),)),
            Align(alignment:Alignment.centerLeft,child: Text("Gender : Male",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500),)),
            Align(alignment:Alignment.centerLeft,child: Text("Phone : +918678911680",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500),)),

            Align(alignment:Alignment.centerLeft,child: Text("Phone : sudalaivigneshr21it@psnacet.edu.in",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500),)),
            SizedBox(height: 20,),
            Align(alignment:Alignment.centerLeft,child: Text("Share Your Report",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600),)),
            SizedBox(height: 10,),
            Align(alignment:Alignment.centerLeft,child: Text("Ask yout teacher for the institution code then enter it here",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500),)),
            SizedBox(height: 20,),

            SizedBox(

                height: 50,
                child: TextField(


                  decoration: InputDecoration(border:OutlineInputBorder( ),labelText: "Icode", labelStyle: GoogleFonts.poppins()),


                )),

            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>doctor()));

              },
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                child: Container(

                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),



                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(colors: [
                      Colors.blue,
                      Colors.deepPurple
                    ])),
                 child:Text("Share",style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500)),)
              ),
            ),
            SizedBox(height: 20,),
            Align(alignment:Alignment.centerLeft,child: Text("To Sign in with code",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600),)),
            SizedBox(height: 10,),
            Align(alignment:Alignment.centerLeft,child: Text("Use a cide with 6-7 letters and numbers and no spaces or symbols. For more info Contact helpline.",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500),)),
            SizedBox(height: 20,),



          ],),
        )
      
      
    ],),));
  }
}
