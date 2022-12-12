import 'package:e_incubator/login_page.dart';
import 'package:e_incubator/signup_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

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
            SizedBox(height: 60,),
            TextButton(
              child: Container(
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
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> LoginPage()
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

            SizedBox(height: 20,),
            TextButton(
              child: Container(
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
                    "Sign Up",
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.headline4,
                      //fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => SignupPage()
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
          ]
        ),
    );
   }
}
