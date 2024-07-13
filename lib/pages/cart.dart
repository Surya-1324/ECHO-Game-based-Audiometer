
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'doctor.dart';
import 'headpones.dart';
import 'noisemeter.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget contain(img,name){
    return GestureDetector(
      onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NoiseMeterApp()));},
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(

            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.circular(15)
            ),
            height: 157,
            width: 140,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(img),

                Align(
                  child: Text(name,style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w600),),),
                ),
              ],
            ),

        ),
      ),
    );
  }
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xFFEBEEF5
      ),
      body: Padding(

          padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>headphone()));
                    },
                    icon: Icon(Icons.arrow_back_outlined,color: Colors.black,))),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Choose your headphone',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              color: Colors.white,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
              ),
              child: TextField(
                decoration: InputDecoration(

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)

                  ),
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search for headphone',
                  hintStyle: GoogleFonts.poppins(color: Colors.black,),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                contain('images/png-transparent-blue-and-black-skullcandy-earphones-microphone-headphones-skullcandy-headset-apple-earbuds-headphones-electronics-parts-electronic-device__1_-removebg-preview 1.png', 'Skullcandy')
              ,contain('images/boat-removebg-preview 1.png', 'Boat headphone')
              ],
            ),

            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                contain('images/99-994929_mobile-earphone-png-transparent-earphone-png-png-download-removebg-preview 1.png', 'Portronics'),
                contain('images/mi-removebg-preview 1.png', 'Mi headphone')
              ],
            ),

            SizedBox(
              height: 20,
            ),Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                contain('images/download-removebg-preview 1.png', 'Oneplus'),
                contain('images/images-removebg-preview 1.png', 'Beats')
              ],
            )

          ],
        ),
      ),
    ));
  }
}
