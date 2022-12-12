import 'package:e_incubator/egg_turn_card.dart';
import 'package:e_incubator/supervisor_1.dart';
import 'package:e_incubator/turn_history1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import  'package:intl/intl.dart';

import 'login_page.dart';

class DeviceDetails2 extends StatelessWidget {
  const DeviceDetails2({Key? key}) : super(key: key);

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
                    top: 62,
                    left: 9,
                    child: Text(
                      "Device Details",
                      style: GoogleFonts.lato(
                        fontSize: 20,
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
                          height: height*0.45,
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
                  SizedBox(height: height*0.05,),
                  Positioned(
                      top: 35,
                      left: 55,
                      child: Container(
                        height: height*0.05,
                        child: Text(
                          "Device No: 2",
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      )
                  ),
                  SizedBox(height: height*0.05,),
                  Positioned(
                      top: 70,
                      left: 55,
                      child: Container(
                        height: height*0.05,
                        child: Text(
                          "Client Name: Md. Saleh",
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      )
                  ),
                  SizedBox(height: height*0.09,),
                  Positioned(
                      top: 105,
                      left: 55,
                      child: Container(
                        height: height*0.05,
                        child: Text(
                          "Date Of Incubation Start: 02/12/2022",
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      )
                  ),
                  SizedBox(height: height*0.05,),
                  Positioned(
                      top: 140,
                      left: 55,
                      child: Container(
                        height: height*0.05,
                        child: Text(
                          "Incubation Complete Date: 23/12/2022",
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      )
                  ),
                  SizedBox(height: height*0.05,),
                  Positioned(
                      top: 175,
                      left: 55,
                      child: Container(
                        height: height*0.05,
                        child: Text(
                          "Total Eggs: 10",
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      )
                  ),
                  SizedBox(height: height*0.05,),
                  Positioned(
                      top: 210,
                      left: 55,
                      child: Container(
                        height: height*0.05,
                        child: Text(
                          "Egg Type: Chicken Egg",
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      )
                  ),
                ]
            ),
          ]
      ),
    );
  }
}
