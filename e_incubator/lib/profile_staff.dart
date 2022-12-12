import 'package:e_incubator/duty_staff_1.dart';
import 'package:e_incubator/supervisor_1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import  'package:intl/intl.dart';

import 'login_page.dart';

class ProfileStaff extends StatelessWidget {
  const ProfileStaff({Key? key}) : super(key: key);

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
      drawer: NavigationDrawer1(),
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
                  left: 30,
                  child: Text(
                    "Profile",
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
                        height: height*0.4,
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
                    top: 2,
                    left: 140,
                    child: Center(
                      child: Container(
                        height: 80,
                        child: Image.asset("img/profile.png"),
                      ),
                    )
                ),
                SizedBox(height: height*0.09,),
                Positioned(
                    top: 110,
                    left: 55,
                    child: Container(
                      height: height*0.05,
                      child: Text(
                        "Name: Md. Saleh",
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    )
                ),
                SizedBox(height: height*0.09,),
                Positioned(
                    top: 140,
                    left: 55,
                    child: Container(
                      height: height*0.05,
                      child: Text(
                        "Username: md_saleh",
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    )
                ),
                SizedBox(height: height*0.09,),
                Positioned(
                    top: 170,
                    left: 55,
                    child: Container(
                      height: height*0.05,
                      child: Text(
                        "Phone No. : 017520599XX",
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    )
                ),
              ]
          ),
          SizedBox(height: height*0.03,),
          TextButton(
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.orangeAccent,
              ),
              child: Center(
                child: Text(
                  "Change Password",
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    color: Colors.black,
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
          SizedBox(height: height*0.005,),
          TextButton(
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.orangeAccent,
              ),
              child: Center(
                child: Text(
                  "Change Phone No.",
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            onPressed: (){
              openDialog2(context);
            },
            style: TextButton.styleFrom(
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
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
        insetPadding: EdgeInsets.symmetric(
          horizontal:30.0,
          vertical: 50.0,
        ),
        title: Text("Change Password"),
        titleTextStyle: GoogleFonts.lato(
          fontSize: 15,
          color: Colors.black,
        ),
        content: SingleChildScrollView(
          child: Column(
              children: [
                TextField(
                  //autofocus: true,
                  decoration: InputDecoration(
                      hintText: "Current Password",
                      hintStyle: GoogleFonts.lato(
                        fontSize: 15,
                        color: Colors.grey,
                      )
                  ),
                ),
                TextField(
                  //autofocus: true,
                  decoration: InputDecoration(
                      hintText: "New Password",
                      hintStyle: GoogleFonts.lato(
                        fontSize: 15,
                        color: Colors.grey,
                      )
                  ),
                ),
                TextField(
                  //autofocus: true,
                  decoration: InputDecoration(
                      hintText: "Re-Enter New Password",
                      hintStyle: GoogleFonts.lato(
                        fontSize: 15,
                        color: Colors.grey,
                      )
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
                  builder: (context) => LoginPage()
              )
              );
            },
          )
        ],
      ),
    ),
  );
  Future openDialog2(context) => showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text("Enter New Phone No."),
      titleTextStyle: GoogleFonts.lato(
        fontSize: 15,
        color: Colors.black,
      ),
      content: TextField(
        //autofocus: true,
        decoration: InputDecoration(
            hintText: "Phone No.",
            hintStyle: GoogleFonts.lato(
              fontSize: 15,
              color: Colors.grey,
            )
        ),
      ),
      actions: [
        TextButton(
            onPressed: (){},
            child: TextButton(
              child: Text(
                "Send Code",
                style: GoogleFonts.lato(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              onPressed: (){
                openDialog3(context);
              },
            )
        )
      ],
    ),
  );
  Future openDialog3(context) => showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text("Enter Authentication Code"),
      titleTextStyle: GoogleFonts.lato(
        fontSize: 15,
        color: Colors.black,
      ),
      content: TextField(
        //autofocus: true,
        decoration: InputDecoration(
            hintText: "Code",
            hintStyle: GoogleFonts.lato(
              fontSize: 15,
              color: Colors.grey,
            )
        ),
      ),
      actions: [
        TextButton(
            onPressed: (){},
            child: TextButton(
              child: Text(
                "Submit",
                style: GoogleFonts.lato(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ProfileStaff()
                )
                );
              },
            )
        )
      ],
    ),
  );
}
