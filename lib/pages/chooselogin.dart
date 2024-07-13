
import 'package:flutter/material.dart';
import 'package:mario_game/pages/role.dart';
import 'gradient.dart';
import 'package:google_fonts/google_fonts.dart';
import 'headpones.dart';

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
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
                      child: Text('Choose your Login',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      child: Text('Check your Hearing Ability Here',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>headphone()));},
                      child: Container(
                        height: 126,
                        width: 128,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/Vector.png'),
                            SizedBox(
                              height: 15,
                            ),Align(
                              child: GradientText(
                                "Hearing Test",
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
                      onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>role()));},
                      child: Container(
                        height: 126,
                        width: 128,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/Vector (1).png'),
                            SizedBox(
                              height: 15,
                            ),Align(
                              child: GradientText(
                                "Admin Login",
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