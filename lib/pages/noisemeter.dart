import 'dart:async';


import 'package:google_fonts/google_fonts.dart';
import 'package:mario_game/theme/color.dart';
import 'package:noise_meter/noise_meter.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import '../main.dart';



class NoiseMeterApp extends StatefulWidget {
  @override
  _NoiseMeterAppState createState() => _NoiseMeterAppState();
}

class _NoiseMeterAppState extends State<NoiseMeterApp> {
  bool _isRecording = false;
  NoiseReading? _latestReading;
  StreamSubscription<NoiseReading>? _noiseSubscription;
  NoiseMeter? noiseMeter;
  @override
  void initstate()
  {
    super.initState();
    start();
  }
  @override
  void dispose() {
    _noiseSubscription?.cancel();
    super.dispose();
  }

  void onData(NoiseReading noiseReading){
    setState(() => _latestReading = noiseReading);
  }


  void onError(Object error) {
    print(error);
    stop();
  }

  /// Check if microphone permission is granted.
  Future<bool> checkPermission() async => await Permission.microphone.isGranted;

  /// Request the microphone permission.
  Future<void> requestPermission() async =>
      await Permission.microphone.request();

  /// Start noise sampling.
  Future<void> start() async {
    // Create a noise meter, if not already done.
    noiseMeter ??= NoiseMeter();

    // Check permission to use the microphone.
    //
    // Remember to update the AndroidManifest file (Android) and the
    // Info.plist and pod files (iOS).
    if (!(await checkPermission())) await requestPermission();

    // Listen to the noise stream.
    _noiseSubscription = noiseMeter?.noise.listen(onData, onError: onError);
    setState(() => _isRecording = true);
  }

  /// Stop sampling.
  void stop() {
    _noiseSubscription?.cancel();
    setState(() => _isRecording = false);
  }





  @override
  Widget build(BuildContext context) =>  SafeArea(
    child: Container(
    
      decoration: BoxDecoration(

        gradient: LinearGradient(

            end: Alignment.centerRight,
            begin: Alignment.bottomLeft,
            colors: [
            color2,
         color1
    
        ]
    
        )
      ),
    
      child: Scaffold(
        backgroundColor: Colors.transparent,
          body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    elevation: 5,
                    child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20),),
                        color: Colors.white,
                    ),

                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                margin: EdgeInsets.all(25),
                                child: Column(children: [
                                  Container(
                                    child: Text(_isRecording ? "Mic: ON" : "Mic: OFF",
                                        style: TextStyle(fontSize: 25, color: Colors.blue)),
                                    margin: EdgeInsets.only(top: 20),
                                  ),
                                  Container(
                                    child: Text(
                                      'Noise: ${_latestReading?.meanDecibel.toStringAsFixed(2)} dB',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    margin: EdgeInsets.only(top: 20),
                                  ),
                                  Container(
                                    child: Text(
                                      style: TextStyle(color: Colors.black),
                                      'Max: ${_latestReading?.maxDecibel.toStringAsFixed(2)} dB',
                                    ),


                                  ),

                          SizedBox(height: 10,),
                                  Container(
                                    child: Text(
                                      style: TextStyle(color: Colors.black),
                                      _latestReading?.meanDecibel!=null && !(_latestReading!.meanDecibel <70.00)?"Move to Quiet place":"Now You can start!",
                                    ),
                                  ),
                                  SizedBox(height: 10,),

                                  GestureDetector(
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CarRaceHomePage()));
                                      },
                                      child: Container(
                                        padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                                        decoration: BoxDecoration(
                                            
                                            borderRadius: BorderRadius.circular(20),
                                            gradient: LinearGradient(colors: [
                                          color1,color2
                                        ]

                                        )),
                                        child: Text("Play",style: GoogleFonts.poppins(),),)),




                                ])),



                          ]),
                    ),
                  ),
                ],
              )),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white,
            child: _isRecording ? Icon(Icons.stop,color:Colors.red,) : Icon(Icons.mic,color: Colors.green,),
            onPressed: _isRecording ? stop : start,
          ),
        ),
    ),
  );
}