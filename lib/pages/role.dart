import 'package:flutter/material.dart';
import 'package:mario_game/pages/doctor/doctordashboard.dart';
import 'package:mario_game/pages/institution/institution.dart';
import 'gradient.dart';
import 'package:google_fonts/google_fonts.dart';

import 'headpones.dart';


class role extends StatefulWidget {
  const role({super.key});

  @override
  State<role> createState() => _roleState();
}

class _roleState extends State<role> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                  children: [
                    Align(
                      child: Text('Choose your Role',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>doctordashboard()));},
                      child: Container(
                        height: 62,
                        width: 226,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/Vector (1).png'),
                            SizedBox(
                              width: 15,
                            ),Align(
                              child: GradientText(
                                "Doctor",
                                gradient: LinearGradient( colors: [Color(0xFF5E2FE3), Color(0xFF48A2EE)],),
                                style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    GestureDetector(
                      onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>institutiondashboard()));},
                      child: Container(
                        height: 62,
                        width: 226,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/school.png'),
                            SizedBox(
                              width: 15,
                            ),Align(
                              child: GradientText(
                                "Institution",
                                gradient: LinearGradient( colors: [Color(0xFF5E2FE3), Color(0xFF48A2EE)],),
                                style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]
              )
            ],
          ),
        ),
      ),
    );
  }
}
