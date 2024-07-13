import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mario_game/pages/user/payment.dart';

import '../theme/color.dart';

class info extends StatefulWidget {
  const info({super.key});

  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
  final _selectedTime = TextEditingController();

  void _selectTime() async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (pickedTime != null) {
      final formattedTime = pickedTime.format(context);
      _selectedTime.text = formattedTime;
    }
  }
  final _selectedDate = TextEditingController();

  _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2023),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != _selectedDate.value) {
      setState(() {
        _selectedDate.text = picked.toString();
      });
    }
  }
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
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
          
                      child: Padding(
                        padding: const EdgeInsets.only(),
                        child: new Container(
                          width: 120.0,
                          height: 120.0,
                          decoration: new BoxDecoration(
                            color: Colors.transparent,
                              border: Border.all(color: Colors.white),
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    'images/download (2) 1.png'     ),)),),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text('Dr. Nandhini',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w600),),),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/Group.png'),
                        Image.asset('assets/Group.png'),
                        Image.asset('assets/Group.png'),
                        Image.asset('assets/Group.png'),Image.asset('assets/Group.png'),
          
                      ],
                    )
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
                        child: Text('Biography',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),),
                      ),
                      SizedBox(height: 10,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w600),),),
                      ),
                      SizedBox(height: 10,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text('Schedule',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),),
                      ), SizedBox(height: 10,),
                      Text("Select Date",style: GoogleFonts.poppins(color: Colors.black),),
                      TextFormField(
                        controller: _selectedDate,
          
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          hintText: 'Select Date',
                        ),
                        onTap: _selectDate,
                      ),SizedBox(height: 10,),
                      Text("Select Time",style: GoogleFonts.poppins(color: Colors.black),),
                      TextFormField(
                        controller: _selectedTime,
                        decoration: InputDecoration(
                          hintText: 'Select Time',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                        ),
                        onTap: _selectTime,
                      ),
                      SizedBox(height: 20,),

                      GestureDetector(
                          onTap: (){
                           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>paymentpage()));
                          },
                          child: Container(
                            padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                            decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(colors: [
                                  color1,color2
                                ]

                                )),
                            child: Text("Book Appoinment",style: GoogleFonts.poppins(color: Colors.white),),)),
          
          
          
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
