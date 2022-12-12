import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:e_incubator/check_button.dart';
import 'package:e_incubator/cloudy_card.dart';
import 'package:e_incubator/day_card.dart';
import 'package:e_incubator/history_staff.dart';
import 'package:e_incubator/hum_details_2.dart';
import 'package:e_incubator/humidity_details_supervisor.dart';
import 'package:e_incubator/main_page.dart';
import 'package:e_incubator/night_card.dart';
import 'package:e_incubator/profile_staff.dart';
import 'package:e_incubator/profile_supervisor.dart';
import 'package:e_incubator/rain_card.dart';
import 'package:e_incubator/temp_details_2.dart';
import 'package:e_incubator/temp_details_supervisor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transformer_page_view/transformer_page_view.dart';
import  'package:intl/intl.dart';
import 'package:weather/weather.dart';

import 'history_supervisor.dart';


class DutyStaff1 extends StatefulWidget {
  const DutyStaff1({Key? key}) : super(key: key);

  @override
  State<DutyStaff1> createState() => _DutyStaff1State();
}

class _DutyStaff1State extends State<DutyStaff1> {
  List<String> items=["Device No. 1","Device No. 2"];
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
            Stack(
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
                          left: 10,
                          child: Text(
                            "Duty Staff : B5",
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
                ]
            ),
            SizedBox(height: height*0.02,),
            Container(
              height: 220,
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  NightCard(),
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
                                    color: Colors.grey,
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
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                    child: Container(
                                      height: 50,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.orangeAccent,
                                        borderRadius: BorderRadius.circular(30.0),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Temperature",
                                          style: GoogleFonts.lato(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (context) => TempDetails2()
                                      )
                                      );
                                    },
                                    style: TextButton.styleFrom(
                                        elevation: 20,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30.0),
                                        )
                                    ),
                                  ),
                                  TextButton(
                                    child: Container(
                                      height: 50,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.orangeAccent,
                                        borderRadius: BorderRadius.circular(30.0),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Humidity",
                                          style: GoogleFonts.lato(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (context) => HumDetails2()
                                      )
                                      );
                                    },
                                    style: TextButton.styleFrom(
                                        elevation: 20,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30.0),
                                        )
                                    ),
                                  ),
                                ]
                            ),
                            SizedBox(height: 5,),
                            TextButton(
                              child: Container(
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: Center(
                                  child: Text(
                                    "Check History",
                                    style: GoogleFonts.lato(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => HistoryStaff()
                                )
                                );
                              },
                              style: TextButton.styleFrom(
                                  elevation: 20,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  )
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ]
            ),
          ]
      ),
      drawer: const NavigationDrawer1(),
    );
  }
}

class NavigationDrawer1 extends StatelessWidget {
  const NavigationDrawer1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context),
        ],
      ),
    ),
  );
  Widget buildHeader(BuildContext context) => Container(
    //color: Colors.blue,
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).padding.top,
    ),
    child: Stack(
      children: [
        Column(
          children: [
            Container(
              width: 310,
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "img/background.jpg"
                    ),
                    fit: BoxFit.cover,
                  )
              ),
            ),
            Container(
              width: 300,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
          ],
        ),
        Positioned(
          top: 55,
          bottom: 20,
          right: 30,
          left: 30,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "img/chick.png"
                    )
                )
            ),
          ),
        )
      ],
    ),
  );
  Widget buildMenuItems(BuildContext context) => Container(
    padding: const EdgeInsets.all(24),
    child: Wrap(
      runSpacing: 10,
      children: [
        ListTile(
          leading: const Icon(Icons.home),
          title: Text(
            "Home",
            style: GoogleFonts.lato(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => DutyStaff1()
              )
            );
          }
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: Text(
            "Profile",
            style: GoogleFonts.lato(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
          onTap: (){
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => ProfileStaff()
            )
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.update),
          title: Text(
            "Update",
            style: GoogleFonts.lato(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
          onTap: (){
            Navigator.pop(context);
            openDialog(context);
          },
        ),
        const Divider(color: Colors.black54,),
        ListTile(
          leading: const Icon(Icons.logout),
          title: Text(
            "Logout",
            style: GoogleFonts.lato(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
          onTap: (){
            openDialog4(context);
          },
        ),
      ],
    ),
  );
  Future openDialog(context) => showDialog(
    context: context,
    builder: (context) => AlertDialog(
      //title: Text("Add Duty Staff"),
      titleTextStyle: GoogleFonts.lato(
        fontSize: 15,
        color: Colors.black,
      ),
      content: SingleChildScrollView(
        child: Column(
            children: [
              SingleChildScrollView(
                child: Text(
                    "What Type Of Update You Want To Do With Device?"
                ),
              ),
            ]
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              child: Text(
                "Add",
                style: GoogleFonts.lato(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              onPressed: (){
                openDialog2(context);
              },
            ),
            TextButton(
              child: Text(
                "Delete",
                style: GoogleFonts.lato(
                  fontSize: 15,
                  color: Colors.black,
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
  );
  Future openDialog2(context) => showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text("Add Device"),
      titleTextStyle: GoogleFonts.lato(
        fontSize: 15,
        color: Colors.black,
      ),
      content: SingleChildScrollView(
        child: Column(
            children: [
              SingleChildScrollView(
                child: TextField(
                  //autofocus: true,
                  decoration: InputDecoration(
                      hintText: "Name Of The New Device",
                      hintStyle: GoogleFonts.lato(
                        fontSize: 15,
                        color: Colors.grey,
                      )
                  ),
                ),
              ),
            ]
        ),
      ),
      actions: [
        TextButton(
          child: Text(
            "Confirm",
            style: GoogleFonts.lato(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => DutyStaff1()
            )
            );
          },
        )
      ],
    ),
  );
  Future openDialog3(context) => showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text("Delete Device"),
      titleTextStyle: GoogleFonts.lato(
        fontSize: 15,
        color: Colors.black,
      ),
      content: SingleChildScrollView(
        child: Column(
            children: [
              SingleChildScrollView(
                child: TextField(
                  //autofocus: true,
                  decoration: InputDecoration(
                      hintText: "Name Of The Device",
                      hintStyle: GoogleFonts.lato(
                        fontSize: 15,
                        color: Colors.grey,
                      )
                  ),
                ),
              ),
            ]
        ),
      ),
      actions: [
        TextButton(
          child: Text(
            "Confirm",
            style: GoogleFonts.lato(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => DutyStaff1()
            )
            );
          },
        )
      ],
    ),
  );
  Future openDialog4(context) => showDialog(
    context: context,
    builder: (context) => AlertDialog(
      //title: Text("Add Duty Staff"),
      titleTextStyle: GoogleFonts.lato(
        fontSize: 15,
        color: Colors.black,
      ),
      content: SingleChildScrollView(
        child: Column(
            children: [
              SingleChildScrollView(
                  child: Text(
                      "Are You Sure?"
                  )
              ),
            ]
        ),
      ),
      actions: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                child: Text(
                  "Yes",
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    color: Colors.red,
                  ),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => MainPage()
                  )
                  );
                },
              ),
              TextButton(
                child: Text(
                  "No",
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    color: Colors.green,
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
        )
      ],
    ),
  );
}