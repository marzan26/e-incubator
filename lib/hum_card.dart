import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:e_incubator/check_button.dart';
import 'package:e_incubator/cloudy_card.dart';
import 'package:e_incubator/day_card.dart';
//import 'package:e_incubator/humidity_details_supervisor.dart';
import 'package:e_incubator/main_page.dart';
import 'package:e_incubator/night_card.dart';
//import 'package:e_incubator/profile_supervisor.dart';
import 'package:e_incubator/rain_card.dart';
//import 'package:e_incubator/temp_details_supervisor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transformer_page_view/transformer_page_view.dart';
import  'package:intl/intl.dart';
import 'package:weather/weather.dart';

class HumHistoryCard extends StatelessWidget {
  final String day;
  const HumHistoryCard({
    Key? key,
    required this.day,
  }) : super(key: key);

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
    return Stack(
        children: [
          Positioned(
            child: Center(
              child: Material(
                child: Container(
                  height: height*0.25,
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
          Positioned(
              top: 15,
              left: 160,
              child: Container(
                child: Text(
                  day,
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
          ),
          SizedBox(height: 30,),
          Positioned(
              top: 45,
              left: 50,
              child: Container(
                child: Text(
                  "Humidity Value: 55%",
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              )
          ),
          SizedBox(height: 30,),
          Positioned(
              top: 65,
              left: 50,
              child: Container(
                child: Text(
                  "Humidifier First Turned On: 0400 Hours",
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              )
          ),
          SizedBox(height: 30,),
          Positioned(
              top: 85,
              left: 50,
              child: Container(
                child: Text(
                  "Humidifier Second Turned On: 1200 Hours",
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              )
          ),
          SizedBox(height: 30,),
          Positioned(
              top: 105,
              left: 50,
              child: Container(
                child: Text(
                  "Humidifier Third Turned On: 1800 Hours",
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              )
          )
        ]
    );
  }
}
