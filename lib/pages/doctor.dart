
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'info.dart';
class doctor extends StatefulWidget {
  const doctor({super.key});

  @override
  State<doctor> createState() => _doctorState();
}

class _doctorState extends State<doctor> {
  int pageIndex = 0;

  final pages = [
    const Page2(),
    const Page1(),

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,

            child: Icon(Icons.add,color: Color(0xFF5E2FE3),size: 30,),
            shape: CircleBorder(

            ),

          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          body: pages[pageIndex],
          bottomNavigationBar: buildMyNavBar(context),

          )
      ,);
  }

Container buildMyNavBar(BuildContext context) {
  return Container(
    height: 60,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Color(0xFF5E2FE3), Color(0xFF48A2EE)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),

      // borderRadius: const BorderRadius.only(
      //   topLeft: Radius.circular(20),
      //   topRight: Radius.circular(20),
      // ),
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
    ),
  );
}
}


class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF5E2FE3), Color(0xFF48A2EE)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Text(
          "Page Number 1",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  Widget doctorr(img,name,price){
    return Card(
      color: Colors.white,
      elevation: 10,
      child: Container(
        height: 148,
        width: 117,
        decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(10)
      
        ),
        child: Column(
          children: [
            Image.asset(img,width: 117,height: 90,),SizedBox(
              height: 3,
            ),
            Align(
              child: Text(name,style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.w500),),),
            ),
            SizedBox(
              height: 3,
            ),
            Align(
              child: Text(price,style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.w300),),),
            ),SizedBox(
              height: 5,
            ),
            Container(
              height: 15,
              width: 50,
              // Below is the code for Linear Gradient.
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [Color(0xFF5E2FE3), Color(0xFF48A2EE)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Align(
                  alignment: Alignment.center,
                child: Text('Book now',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 5),)),
            ),],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var h=MediaQuery.of(context).size.height;
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height-60,
          width: MediaQuery.of(context).size.width,
          // Below is the code for Linear Gradient.
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF5E2FE3), Color(0xFF48A2EE)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child:  Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
              children: [
      Container(
       
        child: Column(
      
      
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ Padding(
      padding: const EdgeInsets.all(15.0),
      child: Align(alignment: Alignment.topRight,
        child: IconButton(onPressed: (){


        }, icon: Icon(Icons.shopping_cart_outlined,color: Colors.white,size: 30,)),
      ),
        ),
      Padding(
        padding: const EdgeInsets.only(left: 30.0,bottom: 15),
        child: new Container(
          width: 75.0,
          height: 75.0,
          decoration: new BoxDecoration(
              border: Border.all(color: Colors.white),
              shape: BoxShape.circle,
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                    'images/R.jpg'     ),)),),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 30.0, bottom: 10),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text('Good Morning and Stay Healthy',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),),
        ),
      ), Padding(
        padding: const EdgeInsets.only(left: 30.0, bottom: 10),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text('Hi, Arya How are you?',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),),
        ),
      ),],),
      ),
      
      
                Container(
      
                  width: MediaQuery.of(context).size.width,
      
      
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
                    color: Colors.white,),
      
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            child: Text('Nearby Doctors',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),),
                          ),
                         Row(
                           children: [
                             Container(child: Text('See more',style: GoogleFonts.poppins(color: Colors.blue),),),
                             SizedBox(width: 5,),
                             Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 15,)
                           ],
                         )
                        ],
                      ),
      
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
      
                          SizedBox(
                            width: 20,
                          ),
                          doctorr('images/download (2) 1.png', 'Dr. Nandhini', 'Fee : 800 Rs'),
                          SizedBox(
                            width: 20,
                          ),
                          doctorr('images/images (3) 1.png', 'Dr. Yogeesh', 'Fee : 650 Rssss'),
                          SizedBox(
                            width: 20,
                          ),
                          doctorr('images/img.jpg', 'Dr. Amelia Daniel', 'Fee : 580 Rs'),
      
                        ],
                      ),
                    ),
      
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Consultation Schedule',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Align(
      
                        alignment: Alignment.center,
                        child: Card(
                          color: Colors.white,
                          elevation: 10,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>info()));
                            },
                            child: Container(
                              height: 125,
                              width: 324,
                              child: Row(children: [
                                Image.asset('images/download (2) 1.png',height: 125,width: 140,fit: BoxFit.fill,)
                                ,Padding(
                                  padding: const EdgeInsets.all(23.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
      
                                        child: Text('Dr. Nandhini',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),),
                                      ),
                                      SizedBox(height: 5,),
                                      Align(
                                        child: Row(
                                          children: [
                                            Icon(Icons.calendar_month_outlined,color: Color(0xFF5657E7),size: 15,),
                                            Text('10/09/2023',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.w500),),),
      
                                          ],
                                        ),
                                      ),SizedBox(height: 2,),
                                      Align(
                                        child: Row(
                                          children: [
                                            Icon(Icons.alarm,color: Color(0xFF5657E7),size: 15,),
                                            Text('10:00AM',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.w500),),),
      
                                          ],
                                        ),
                                      ),SizedBox(height: 2,),Text('Status : Approved',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.w500),),),
      
                                    ],
                                  ),
                                )
                              ],),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],),
                )
              ],
            ),
      
        ),
      ),
    );
  }
}


