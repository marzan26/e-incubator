import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:e_incubator/check_button.dart';
import 'package:e_incubator/cloudy_card.dart';
import 'package:e_incubator/day_card.dart';
import 'package:e_incubator/night_card.dart';
import 'package:e_incubator/rain_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transformer_page_view/transformer_page_view.dart';
import  'package:intl/intl.dart';
import 'package:weather/weather.dart';

class HumDetails1 extends StatefulWidget {
  const HumDetails1({Key? key}) : super(key: key);

  @override
  State<HumDetails1> createState() => _HumDetails1State();
}

class _HumDetails1State extends State<HumDetails1> {

  @override
  Widget build(BuildContext context) {
    String cdate1 = DateFormat("EEEEE, dd/MM/yyyy").format(DateTime.now());
    String tdata = DateFormat("hh:mm:ss a").format(DateTime.now());
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

                  bottomRight: Radius.circular(30.0),
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
                    top:50,
                    left: 0,
                    child: Container(
                      height: 50,
                      width: 220,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),

                          )
                      ),

                    )
                ),
                Positioned(
                  top: 60,
                  left: 10,
                  child: Text(
                    "Humidity Details",
                    style: GoogleFonts.lato(
                      fontSize: 21,
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),


              ],
            ),
          ),
          SizedBox(height: height*0.02,),
          Expanded(
              child: MediaQuery.removePadding(context: context,
                  removeTop: true,
                  child: ListView(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(bottom: 10, top: 25),
                          height: 200,
                          padding:
                          const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                          child:Container(
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0),
                                topLeft: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0),
                              ),
                              boxShadow: [
                                new BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  offset: new Offset(-10.0, 0.0),
                                  blurRadius: 20.0,
                                  spreadRadius: 4.0,
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.only(
                              left: 40,
                              top: 50.0,
                              bottom: 50,
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Days Passed: 10",
                                    style: TextStyle(color: Colors.black87,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Egg Turning Status: Standby",
                                    style: TextStyle(color: Colors.black87,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Last Turned : 2 Hours Ago",
                                    style: TextStyle(color: Colors.black87,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),

                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Control Status : Automatic",
                                    style: TextStyle(color: Colors.black87,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),

                                  ),
                                ]),
                          )
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 25),
                        height: 200,
                        padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        child:Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0),
                              topLeft: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30.0),
                            ),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                offset: new Offset(-10.0, 0.0),
                                blurRadius: 20.0,
                                spreadRadius: 4.0,
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top:10,
                                left: 30,
                                child: Card(
                                  elevation: 10.0,
                                  shadowColor: Colors.white.withOpacity(0.2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                        fit: BoxFit.fill, image: AssetImage("img/humidity.jpg"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Positioned(
                                  top: 110,
                                  left: 30,
                                  child: Container(
                                    child: Text(
                                      "Current Humidity : 63% ",
                                      style: GoogleFonts.lato(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )),
                              Positioned(
                                  top: 130,
                                  left: 30,
                                  child: Container(
                                    child: Text(
                                      "Average Humidity : 59% ",
                                      style: GoogleFonts.lato(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )),
                              Positioned(
                                  top: 40,
                                  left: 120,
                                  child:
                                  Container(
                                    height: 150,
                                    width: 180,
                                    child: Column(
                                      children: [
                                        Text(
                                          "Humidifier Status:",
                                          style: GoogleFonts.lato(

                                            fontWeight: FontWeight.bold,

                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                              ),
                              Positioned(
                                  top: 40,
                                  width: 560,
                                  child:Container(
                                    height: 150,
                                    width: 180,
                                    child: Column(
                                      children: [
                                        Text(
                                          "On",
                                          style: GoogleFonts.lato(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,

                                          ),
                                        ),
                                      ],
                                    ),
                                  ) )
                            ],
                          ),

                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(bottom: 10, top: 25),
                          height: 200,
                          padding:
                          const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                          child:Container(
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0),
                                topLeft: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0),
                              ),
                              boxShadow: [
                                new BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  offset: new Offset(-10.0, 0.0),
                                  blurRadius: 20.0,
                                  spreadRadius: 4.0,
                                ),
                              ],
                            ),

                            child: Stack(

                                children: [
                                  Image.asset(
                                    'img/graph.jpg',
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                    width: double.infinity,

                                  ),
                                ]),
                          )
                      ),
                    ],
                  )
              )

          )
        ],
      ),
    );
  }
}

