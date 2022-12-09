import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:e_incubator/check_button.dart';
import 'package:e_incubator/cloudy_card.dart';
import 'package:e_incubator/day_card.dart';
import 'package:e_incubator/night_card.dart';
import 'package:e_incubator/rain_card.dart';
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
  List<String> items=["Device No. 1","Device No. 2","Device No. 3","Device No. 4"];
  String? selectedItem="Device No. 1";
  bool isVisible = false;

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
                  top: 65,
                  left: 9,
                  child: Text(
                    "Owner : B5",
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height*0.02,),
          Container(
            height: 220,
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                NightCard(),
                DayCard(),
                RainCard(),
                CloudyCard(),
              ],
            ),
          ),
          SizedBox(height: height*0.03,),
          Column(
            children: [
              Container(
              child: Positioned(
                left: 20,
                child: SizedBox(
                  width: width*0.9,
                  height: height*0.08,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1,1),
                          color: Colors.grey.withOpacity(0.2),
                        )
                      ]
                    ),
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        hintText: "Select The Device",
                        hintStyle: GoogleFonts.lato(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                          )
                        )
                      ),
                      //value: selectedItem,
                      items: items
                        .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Positioned(
                        left: 30,
                        child: Text(
                          item,
                          style: GoogleFonts.lato(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      )
                    )
                     .toList(),
                      onChanged: (item) => setState(() {
                        selectedItem = item;
                        isVisible = ! isVisible;
                      }
                      ),
                     ),
                  ),
                ),
              )
              ),
              SizedBox(height: height*0.02,),
              Visibility(
                visible: isVisible,
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CheckButton(
                            iconImagePath: 'img/temp.jpg',
                            buttonText: "Temperature"
                        ),
                        CheckButton(
                            iconImagePath: 'img/humidity.jpg',
                            buttonText: "Humidity"
                        )
                      ],
                    ),
                  ),
                ),
              )
            ]
          ),
        ]
      ),
    );
  }
}

//Positioned(
//top: 75,
//left: 9,
//child: Text(
//"Device No.: XXXX",
//style: GoogleFonts.lato(
//fontSize: 16,
//color: Colors.orangeAccent,
//fontWeight: FontWeight.bold,
//),
//)
//)
