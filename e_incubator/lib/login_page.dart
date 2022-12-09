import 'package:flutter/material.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: Column(
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
            SizedBox(height: 30,),
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
            SizedBox(height: 20,),
            Container(
              width: w*0.5,
              height: h*0.09,
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
                  "Login",
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headline4,
                    //fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ]
      ),
    );
  }
}
