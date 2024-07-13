import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_flutter/icons_flutter.dart';

import '../../theme/color.dart';

class report extends StatefulWidget {
  const report({super.key});

  @override
  State<report> createState() => _reportState();
}

class _reportState extends State<report> {



  
  @override
  Widget build(BuildContext context) {
    var w=MediaQuery.of(context).size.width;
    Widget geticons(icon)
    {
      return  Card(

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100),),
        child: Container(


          padding:EdgeInsets.all(10),
          child: Icon(icon),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.deepPurple
                  ]
              )
          ),
        ),
      );
    }

    return SafeArea(child: Scaffold(

      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
        
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
                  Colors.blue,
                  Colors.deepPurple
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
              Align(alignment:Alignment.centerLeft,child: Text("Time : 10:00AM",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500),)),

              SizedBox(height: 20,),
        
        
              Align(alignment:Alignment.centerLeft,child: Text("Test Report",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 18),)),
              SizedBox(height: 10,),
              Align(alignment:Alignment.centerLeft,child: Text("Audiogram",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),)),
        
        
        
        Image(image: AssetImage('assets/myimg.png')),
        
              Container(
                width: w,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    border: TableBorder.all(
                        width: 1.0,
                    borderRadius: BorderRadius.circular(10)

                    ),
                    // Datatable widget that have the property columns and rows.
                      columns: [
                        // Set the name of the column
                        DataColumn(label: Text('Left',textAlign:TextAlign.center,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),),),
                        DataColumn(label: Text('Left',textAlign:TextAlign.center,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),),),
                        DataColumn(label: Text('Right',textAlign:TextAlign.center,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),),),
                        DataColumn(label: Text('Right',textAlign:TextAlign.center,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),)),

                      ],
                      rows:[
                        // Set the values to the columns
                        DataRow(cells: [
                          DataCell(Text("Type",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16))),
                          DataCell(Text("A",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16))),
                          DataCell(Text("Type",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16))),
                          DataCell(Text("A",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16))),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("Turns",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16))),
                          DataCell(Text("8",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16))),
                          DataCell(Text("Turns",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16))),
                          DataCell(Text("10",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16))),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("Compliance",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16))),
                          DataCell(Text("0.87",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16))),
                          DataCell(Text("Compliance",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16))),
                          DataCell(Text("0.69",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16))),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("Volume",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16))),
                          DataCell(Text("300HZ",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16))),
                          DataCell(Text("Volume",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16))),
                          DataCell(Text("300HZ",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16))),
                        ]),
                      ]
                  ),
                ),
              ),





              SizedBox(height: 20,),
              Align(alignment:Alignment.centerLeft,child: Text("Result",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600),)),
              SizedBox(height: 10,),
              Align(alignment:Alignment.centerLeft,child: Text("Patient has a binaural hearing loos\n\n Immittance testing revealed Type A Tympanograms in both ears, and which are consistent with normal middle ear pressure and tympanic membrane mobility",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,),textAlign: TextAlign.justify,)),
              SizedBox(height: 20,),
              Align(alignment:Alignment.centerLeft,child: Text("Result",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600),)),
              SizedBox(height: 10,),
              Align(alignment:Alignment.centerLeft,child: Text("Pursue a trial with amplification for improved hearing clarity of speech ease of listening and prevention of auditory deprivation Utilize communication strategies for improving speech understanding",textAlign: TextAlign.justify,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500),)),
              SizedBox(height: 30,),
              
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
               geticons(FontAwesome.phone),
                geticons(FontAwesome.whatsapp),
                geticons(Icons.check_circle),
                // geticons(FontAwesome.)
                
              ],)
            ],),
          )
        
        
        ],),
      ),));
  }
}

