import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:e_incubator/check_button.dart';
import 'package:e_incubator/cloudy_card.dart';
import 'package:e_incubator/day_card.dart';
import 'package:e_incubator/duty_staff_1.dart';
import 'package:e_incubator/night_card.dart';
import 'package:e_incubator/rain_card.dart';
import 'package:e_incubator/supervisor_1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transformer_page_view/transformer_page_view.dart';
import  'package:intl/intl.dart';
import 'package:weather/weather.dart';

class TempDetails2 extends StatefulWidget {
  const TempDetails2({Key? key}) : super(key: key);

  @override
  State<TempDetails2> createState() => _TempDetails2State();
}

class _TempDetails2State extends State<TempDetails2> {

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
          Stack(
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
                        width: 240,
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
                    left:10,
                    child: Text(
                      "Temperature Details",
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
              TextButton(
                child: Positioned(
                  top: 26,
                  left: 2,
                  child: Container(
                    height: 20,
                    child: Icon( Icons.arrow_back_ios_new_outlined, size: 20,color: Colors.white,),
                  ),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => DutyStaff1()
                    )
                  );
                },
              ),
           ]
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
                            child: Stack(
                              children: [
                                Positioned(
                                    top: 30,
                                    left: 27,
                                    child: Container(
                                      child: Text(
                                        "Days Passed: 10",
                                        style: GoogleFonts.lato(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    )),
                                Positioned(
                                    top: 50,
                                    left: 27,
                                    child: Container(
                                      child: Text(
                                        "Egg Turning Status: Standby ",
                                        style: GoogleFonts.lato(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    )),
                                Positioned(
                                    top: 70,
                                    left: 27,
                                    child: Container(
                                      child: Text(
                                        "Last Turned: 10.10AM (2hrs ago)",
                                        style: GoogleFonts.lato(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    )),
                                Positioned(
                                    top: 90,
                                    left: 27,
                                    child: Container(
                                      child: Text(
                                        "Next Turning: 04.10PM (4hrs later)",
                                        style: GoogleFonts.lato(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    )),
                                Positioned(
                                    top: 110,
                                    left: 27,
                                    child: Container(
                                      child: Text(
                                        "Control Status: Automatic",
                                        style: GoogleFonts.lato(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    )),
                                Positioned(
                                    top: 120,
                                    left: 235,
                                    child: Container(
                                      child: Text(
                                        "Change Status?",
                                        style: GoogleFonts.lato(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                        ),
                                      ),
                                    )),
                                Positioned(
                                  top: 124,
                                  width: 507,
                                  child:TextButton(
                                    onPressed: () {
                                      openDialog(context);
                                    },
                                    child: Container(
                                      child: Icon(Icons.check_box, color: Colors.green, size: 18,),
                                    ),
                                    style: TextButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30.0),
                                        )
                                    ),
                                  ), ),
                                Positioned(
                                  top: 124,
                                  width: 565,
                                  child:TextButton(
                                    onPressed: () {
                                      openDialog(context);
                                    },
                                    child: Container(
                                      child: Icon(Icons.clear_rounded, color: Colors.red, size: 20,),
                                    ),
                                    style: TextButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30.0),
                                        )
                                    ),
                                  ), ),

                              ],
                            ),
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
                                        fit: BoxFit.fill, image: AssetImage("img/temp.jpg"),
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
                                      "Current Temperature :37°C ",
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
                                      "Average Temperature :35.5°C ",
                                      style: GoogleFonts.lato(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )),
                              Positioned(
                                  top: 40,
                                  left: 150,
                                  child:
                                  Container(
                                    height: 150,
                                    width: 180,
                                    child: Column(
                                      children: [
                                        Text(
                                          "Heater Status: ",
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
                                  width: 595,
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
                                  ) ),
                              Positioned(
                                top: 120,
                                width: 550,
                                child:TextButton(
                                  onPressed: () {
                                    openDialog4(context);
                                  },
                                  child: Container(
                                    width: 20,
                                    child: Icon(Icons.power_settings_new_rounded, color: Colors.red, size: 30,),
                                  ),
                                  style: TextButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30.0),
                                      )
                                  ),
                                ), ),
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
                Text(
                    "What Do You Want To Do With The Motor?"
                )
              ]
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                child: Text(
                  "Switch ON",
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    color: Colors.green,
                  ),
                ),
                onPressed: (){
                  openDialog2(context);

                },
              ),
              TextButton(
                child: Text(
                  "Switch OFF",
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    color: Colors.red,
                  ),
                ),
                onPressed: (){
                  openDialog3(context);
                },
              ),
            ],
          )
        ],
      ),
    ),
  );
  Future openDialog2(context) => showDialog(
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
                Text(
                    "The Motor Is Switched On"
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
                color: Colors.green,
              ),
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => TempDetails2()
              )
              );

            },
          ),

        ],
      ),
    ),
  );
  Future openDialog3(context) => showDialog(
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
                Text(
                    "The Motor Is Switched Off"
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
                color: Colors.green,
              ),
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => TempDetails2()
              )
              );

            },
          ),

        ],
      ),
    ),
  );

  Future openDialog4(context) => showDialog(
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
                Text(
                    "What Do You Want To Do With The Bulb?"
                )
              ]
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                child: Text(
                  "Switch ON",
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    color: Colors.green,
                  ),
                ),
                onPressed: (){
                  openDialog5(context);

                },
              ),
              TextButton(
                child: Text(
                  "Switch OFF",
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    color: Colors.red,
                  ),
                ),
                onPressed: (){
                  openDialog6(context);
                },
              ),
            ],
          )
        ],
      ),
    ),
  );
  Future openDialog5(context) => showDialog(
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
                Text(
                    "The Bulb Is Switched On"
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
                color: Colors.green,
              ),
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => TempDetails2()
              )
              );

            },
          ),

        ],
      ),
    ),
  );
  Future openDialog6(context) => showDialog(
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
                Text(
                    "The Bulb Is Switched Off"
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
                color: Colors.green,
              ),
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => TempDetails2()
              )
              );

            },
          ),

        ],
      ),
    ),
  );
}

