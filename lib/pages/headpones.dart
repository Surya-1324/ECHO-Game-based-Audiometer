
import 'package:flutter/material.dart';
import 'cart.dart';
import 'gradient.dart';
import 'package:google_fonts/google_fonts.dart';

class headphone extends StatefulWidget {
  const headphone({super.key});

  @override
  State<headphone> createState() => _headphoneState();
}

class _headphoneState extends State<headphone> {
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
                      child: Text('Choose your Headphones',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>cart()));},
                      child: Container(
                        height: 97,
                        width: 252,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 33),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/icon _bluetooth_.png'),
                              SizedBox(
                                width: 15,
                              ),Align(
                                child: GradientText(
                                  "Bluetooth",
                                  gradient: LinearGradient( colors: [Color(0xFF5E2FE3), Color(0xFF48A2EE)],),
                                  style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    GestureDetector(
                      onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>cart()));},
                      child: Container(height: 97,
                        width: 252,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/20230920_103824 1.png'),
                              SizedBox(
                                height: 15,
                              ),Align(
                                child: GradientText(
                                  "Wired Headphones",
                                  gradient: LinearGradient( colors: [Color(0xFF5E2FE3), Color(0xFF48A2EE)],),
                                  style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),

                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),SizedBox(
                      height: 35,
                    ),
                    GestureDetector(
                      onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>cart()));},
                      child: Container(
                        height: 97,
                        width: 252,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/icon _headset_.png'),
                              SizedBox(
                                width: 10,
                              ),Align(
                                child: GradientText(
                                  "Overhead Headphones",
                                  gradient: LinearGradient( colors: [Color(0xFF5E2FE3), Color(0xFF48A2EE)],),
                                  style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                                ),
                              ),
                            ],
                          ),
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


