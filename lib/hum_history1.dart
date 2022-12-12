import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:e_incubator/check_button.dart';
import 'package:e_incubator/cloudy_card.dart';
import 'package:e_incubator/day_card.dart';
import 'package:e_incubator/hum_card.dart';
//import 'package:e_incubator/egg_turn_card.dart';
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

import 'hum_card.dart';

class HumHistory1 extends StatelessWidget {
  const HumHistory1({Key? key}) : super(key: key);

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
                      width: 200,
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
                  top: 65,
                  left: 10,
                  child: Text(
                    "Humidity History",
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
          SizedBox(height: height*0.02,),
          Expanded(
              child: MediaQuery.removePadding(context: context,
                removeTop: true,
                child: ListView(
                  children: [
                    HumHistoryCard(day: "Day 1"),
                    SizedBox(height: height*0.02,),
                    HumHistoryCard(day: "Day 2"),
                    SizedBox(height: height*0.02,),
                    HumHistoryCard(day: "Day 3"),
                    SizedBox(height: height*0.02,),
                    HumHistoryCard(day: "Day 4"),
                    SizedBox(height: height*0.02,),
                    HumHistoryCard(day: "Day 5"),
                    SizedBox(height: height*0.02,),
                    HumHistoryCard(day: "Day 6"),
                    SizedBox(height: height*0.02,),
                    HumHistoryCard(day: "Day 7"),
                    SizedBox(height: height*0.02,),
                    HumHistoryCard(day: "Day 8"),
                    SizedBox(height: height*0.02,),
                    HumHistoryCard(day: "Day 9"),
                    SizedBox(height: height*0.02,),
                    HumHistoryCard(day: "Day 10"),
                    SizedBox(height: height*0.02,),
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
