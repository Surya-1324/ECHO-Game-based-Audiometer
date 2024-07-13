import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mario_game/theme/color.dart';

import '../doctor.dart';
import '../role.dart';

class paymentsuccesspage extends StatefulWidget {
  const paymentsuccesspage({super.key});

  @override
  State<paymentsuccesspage> createState() => _paymentsuccesspageState();
}

class _paymentsuccesspageState extends State<paymentsuccesspage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(


          gradient: LinearGradient(colors: [color1,color2],begin: Alignment.topLeft,end: Alignment.bottomRight),


      ),
      child: SafeArea(child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(

            children: [
            Row(
              children: [
                GestureDetector(
                    onTap: (){
                      Navigator.of(context).pop();

                    },
                    child: Icon(Icons.arrow_back)),
              ],
            ),

              SizedBox(height: 100,),
              
              Icon(Icons.check_circle,size: 100,),

              SizedBox(height: 20,),
              Text("Success",style: GoogleFonts.poppins(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700),),
              SizedBox(height: 20,),

              ElevatedButton(onPressed: (){

Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>role()));

              }, child: Text("Done",style: GoogleFonts.poppins(color: Colors.deepPurple),),style: ElevatedButton.styleFrom(backgroundColor: Colors.white),)
              
          
          ],),
        ),
      )),
    );
  }
}
