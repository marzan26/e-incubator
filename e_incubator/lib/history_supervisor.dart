import 'package:e_incubator/device_details.dart';
import 'package:e_incubator/egg_turn_card.dart';
import 'package:e_incubator/hum_history1.dart';
import 'package:e_incubator/humidity_details_supervisor.dart';
import 'package:e_incubator/supervisor_1.dart';
import 'package:e_incubator/temp_history1.dart';
import 'package:e_incubator/turn_history1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import  'package:intl/intl.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'login_page.dart';

class HistorySupervisor extends StatelessWidget {
  const HistorySupervisor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery
        .of(context)
        .size
        .width;
    final double height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 125,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
                color: Colors.orangeAccent,
                boxShadow: [
                  new BoxShadow(
                    color: Colors.orangeAccent.withOpacity(0.7),
                    offset: new Offset(-10.0, 0.0),
                    blurRadius: 20.0,
                    spreadRadius: 4.0,
                  )
                ]
            ),
            child: Stack(
              children: [
                Positioned(
                    top: 50,
                    left: 0,
                    child: Container(
                      height: 55,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50)
                          )
                      ),
                    )
                ),
                Positioned(
                  top: 58,
                  left: 15,
                  child: Text(
                    "History",
                    style: GoogleFonts.lato(
                      fontSize: 30,
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height*0.07,),
          Stack(
              children: [
                Positioned(
                  child: Center(
                    child: Material(
                      child: Container(
                        height: height*0.55,
                        width: width*0.9,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                offset: new Offset(-10.0, 10.0),
                                blurRadius: 20.0,
                                spreadRadius: 4.0,
                              )
                            ]
                        ),
                      ),
                    ),
                  ),
                ),

                Column(
                  children: [
                    SizedBox(height: height*0.02,),
                    Center(
                      child: TextButton(
                        child: Positioned(
                          top: 50,
                          child: Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.orangeAccent,
                            ),
                            child: Center(
                              child: Text(
                                "Device Details",
                                style: GoogleFonts.lato(
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => DeviceDetails()
                          )
                          );
                        },
                        style: TextButton.styleFrom(
                          elevation: 20,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),

                      ),
                    ),
                    SizedBox(height: height*0.007,),
                    Center(
                      child: TextButton(
                        child: Positioned(
                          top: 50,
                          child: Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.orangeAccent,
                            ),
                            child: Center(
                              child: Text(
                                "Egg Turning",
                                style: GoogleFonts.lato(
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => TurnHistory1()
                            )
                          );
                        },
                        style: TextButton.styleFrom(
                          elevation: 20,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),

                      ),
                    ),
                    SizedBox(height: height*0.007,),
                    Center(
                      child: TextButton(
                        child: Positioned(
                          top: 50,
                          child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.orangeAccent,
                            ),
                            child: Center(
                              child: Text(
                                "Temperature Details",
                                style: GoogleFonts.lato(
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => TempHistory1()
                          )
                          );
                        },
                        style: TextButton.styleFrom(
                          elevation: 20,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),

                      ),
                    ),
                    SizedBox(height: height*0.007,),
                    Center(
                      child: TextButton(
                        child: Positioned(
                          top: 50,
                          child: Container(
                            height: 40,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.orangeAccent,
                            ),
                            child: Center(
                              child: Text(
                                "Humidity Details",
                                style: GoogleFonts.lato(
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => HumHistory1()
                          )
                          );
                        },
                        style: TextButton.styleFrom(
                          elevation: 20,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),

                      ),
                    ),
                    SizedBox(height: height*0.007,),
                    Center(
                      child: TextButton(
                        child: Positioned(
                          top: 50,
                          child: Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.orangeAccent,
                            ),
                            child: Center(
                              child: Text(
                                "Success Rate",
                                style: GoogleFonts.lato(
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        onPressed: (){
                          openDialog(context);
                        },
                        style: TextButton.styleFrom(
                          elevation: 20,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),

                      ),
                    ),
                  ],
                ),

              ]
          ),
          SizedBox(height: height*0.04,),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Supervisor1()
              )
              );
            },
            child: Container(
              child: Icon(Icons.home, color: Colors.orangeAccent, size: 55, ),
            ),
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                )
            ),
          ),


        ],
      ),
    );
  }
  Future openDialog(context) => showDialog(
    context: context,
    builder: (context) => SingleChildScrollView(
      child: AlertDialog(

        //title: Text("Change Password"),
        titleTextStyle: GoogleFonts.lato(
          fontSize: 15,
          color: Colors.black,
        ),
        content: SingleChildScrollView(
          child: Column(
              children: [
                Center(
                  child: SpinKitPouringHourGlassRefined(
                    color: Colors.orangeAccent,
                    size: 50.0,
                  ),
                ),
                SizedBox(height: 40,),
                Text(
                    "This Incubation Looks Like To Have A Success Rate Of 90%",
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                )
              ]
          ),
        ),
        actions: [
          TextButton(
            child: Text(
              "OK",
              style: GoogleFonts.lato(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => HistorySupervisor()
              )
              );
            },
          )
        ],
      ),
    ),
  );
}
