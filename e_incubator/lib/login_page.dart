
import 'package:e_incubator/duty_staff_1.dart';
import 'package:e_incubator/supervisor_1.dart';
import 'package:flutter/material.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'client_1.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery
        .of(context)
        .size
        .width;
    double h = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: w,
                          height: h*0.3,
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
                          width: w,
                          height: h*0.15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: h*0.17,
                      bottom: h*0.00009,
                      right: w*0.32,
                      left: w*0.32,
                      child: Container(
                        width: w*0.4,
                        height: w*0.4,
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
              ),
              Container(
                child: Text(
                  "E-Incubator",
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: w*0.9,
                height: h*0.08,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2),
                        )
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        label: Text.rich(
                            TextSpan(
                                children: <InlineSpan>[
                                  WidgetSpan(
                                    child: Text(
                                      "Username",
                                      style: GoogleFonts.lato(
                                        fontSize: 15,
                                        color: Colors.orangeAccent,
                                      ),
                                    ),
                                  ),
                                  WidgetSpan(
                                      child: Text(
                                        "*",
                                        style: GoogleFonts.lato(
                                          fontSize: 18,
                                          color: Colors.redAccent,
                                        ),
                                      )
                                  )
                                ]
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              SizedBox(
                width: w*0.9,
                height: h*0.08,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2),
                        )
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        label: Text.rich(
                            TextSpan(
                                children: <InlineSpan>[
                                  WidgetSpan(
                                    child: Text(
                                      "Password",
                                      style: GoogleFonts.lato(
                                        fontSize: 15,
                                        color: Colors.orangeAccent,
                                      ),
                                    ),
                                  ),
                                  WidgetSpan(
                                      child: Text(
                                        "*",
                                        style: GoogleFonts.lato(
                                          fontSize: 18,
                                          color: Colors.redAccent,
                                        ),
                                      )
                                  )
                                ]
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 220,),
                  TextButton(
                    child: Container(
                      child: Text(
                        "Forgot Password?",
                        style: GoogleFonts.lato(
                          fontSize: 15,
                          color: Colors.grey.withOpacity(0.9),
                        ),
                      ),
                    ),
                    onPressed: (){
                      openDialog(context);
                    },
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    child: Container(
                      width: w*0.3,
                      height: h*0.08,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage(
                                "img/button.jpg"
                            ),
                            fit: BoxFit.cover,
                          )
                      ),
                      child: Center(
                        child: Text(
                          "Supervisor",
                          style: GoogleFonts.lato(
                            textStyle: Theme.of(context).textTheme.headline4,
                            //fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Supervisor1()
                       )
                      );
                    },
                    style: TextButton.styleFrom(
                        elevation: 20,
                        shadowColor: Colors.orangeAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                    ),
                  ),
                  TextButton(
                    child: Container(
                      width: w*0.3,
                      height: h*0.08,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage(
                                "img/button.jpg"
                            ),
                            fit: BoxFit.cover,
                          )
                      ),
                      child: Center(
                        child: Text(
                          "Duty Staff",
                          style: GoogleFonts.lato(
                            textStyle: Theme.of(context).textTheme.headline4,
                            //fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => DutyStaff1()
                      )
                      );
                    },
                    style: TextButton.styleFrom(
                        elevation: 20,
                        shadowColor: Colors.orangeAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                    ),
                  ),
                  TextButton(
                    child: Container(
                      width: w*0.2,
                      height: h*0.08,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage(
                                "img/button.jpg"
                            ),
                            fit: BoxFit.cover,
                          )
                      ),
                      child: Center(
                        child: Text(
                          "Client",
                          style: GoogleFonts.lato(
                            textStyle: Theme.of(context).textTheme.headline4,
                            //fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Client1()
                      )
                      );
                    },
                    style: TextButton.styleFrom(
                        elevation: 20,
                        shadowColor: Colors.orangeAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                    ),
                  ),
                ],
              ),
            ]
        ),
      ),
    );
  }
  Future openDialog(context) => showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text("Enter Your Phone No."),
      titleTextStyle: GoogleFonts.lato(
        fontSize: 15,
        color: Colors.black,
      ),
      content: TextField(
        autofocus: true,
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
                openDialog2(context);
              },
            )
        )
      ],
    ),
  );
  Future openDialog2(context) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Enter Authentication Code"),
        titleTextStyle: GoogleFonts.lato(
          fontSize: 15,
          color: Colors.black,
        ),
        content: TextField(
          autofocus: true,
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
                  hintText: "Password",
                  hintStyle: GoogleFonts.lato(
                    fontSize: 15,
                    color: Colors.grey,
                  )
              ),
            ),
              TextField(
                //autofocus: true,
                decoration: InputDecoration(
                    hintText: "Re-Enter Password",
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
  );
}
