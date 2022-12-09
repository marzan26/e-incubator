import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transformer_page_view/transformer_page_view.dart';
import  'package:intl/intl.dart';
import 'package:weather/weather.dart';


class Supervisor1 extends StatefulWidget {
  const Supervisor1({Key? key}) : super(key: key);

  @override
  State<Supervisor1> createState() => _Supervisor1State();
}

class _Supervisor1State extends State<Supervisor1> {


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
            height: 150,
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
                  top: 57,
                  left: 9,
                  child: Text(
                    "Duty Staff : B5",
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                    top: 75,
                    left: 9,
                    child: Text(
                      "Device No.: XXXX",
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                )
              ],
            ),
          ),
          SizedBox(height: height*0.05,),
          Container(
                  height: 200,
                  child: Stack(
                    children: [
                      Positioned(
                          top: 40,
                          left: 20,
                          child: Material(
                            child: Container(
                              height: 150.0,
                              width: width*0.9,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30.0),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    offset: new Offset(-10, 10),
                                    blurRadius: 20.0,
                                    spreadRadius: 4.0,
                                  )
                                ]
                              ),
                            ),
                          )
                      ),
                      Positioned(
                          top: 0,
                          left: 30,
                          child: Card(
                            elevation: 15.0,
                            shadowColor: Colors.grey.withOpacity(0.5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Container(
                              height: 180,
                              width: 140,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("img/night.jpg"),
                                )
                              ),
                            ),
                          )
                      ),
                      Positioned(
                          top: 45,
                          left: 180,
                          child: Container(
                            height: 150,
                            width: 180,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Gazipur",
                                  style: GoogleFonts.lato(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Text(
                                  cdate1,
                                  style: GoogleFonts.lato(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  tdata,
                                  style: GoogleFonts.lato(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Positioned(
                                  top: 190,
                                  left: 90,
                                  right: 40,
                                  child: Row(
                                    children: [
                                      Text(
                                          "25°C ",
                                        style: GoogleFonts.lato(
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                          "                77%",
                                        style: GoogleFonts.lato(
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                      )
                    ],
                  ),
              ),
        ]
      )
    );
  }
}
