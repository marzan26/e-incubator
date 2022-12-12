
import 'package:e_incubator/login_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/material/input_decorator.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class SignupPage extends StatefulWidget {
  //const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  List<String> items=["Supervisor","Duty Staff","Client"];
  String? selectedItem="Supervisor";

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
        resizeToAvoidBottomInset: false,
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
                height: h*0.1,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "img/back.jpg"
                  ),
                fit: BoxFit.cover,
                )
                ),
            ),
              Container(
                width: w,
                height: h*0.08,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Positioned(
            top: h*0.05,
            bottom: h*0.008,
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
    ]
    ),
    ),
            Container(
              child: Text(
                "E-Incubator",
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
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
                                    "Name",
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
                                  "Mobile No.",
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
                                    "Confirm Your Password",
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
            SizedBox(
              width: w*0.9,
              height: h*0.08,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2),
                      )
                    ]
                ),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    hintText: "Join As",
                      hintStyle: GoogleFonts.lato(
                        fontSize: 15,
                        color: Colors.orangeAccent,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white,
                          )
                      ),
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
                      )
                    )
                  )
                   .toList(),
                  onChanged: (item) => setState(() {
                    selectedItem = item;
                    }
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
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
                                    "Set Your Username",
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
            TextButton(
              child: Container(
                width: w*0.5,
                height: h*0.07,
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
                      fontSize: 25,
                      color: Colors.white,
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
                  borderRadius: BorderRadius.circular(30.0)
                )
              ),
            ),
          ]
        ),
      ),
    );
  }
  Future openDialog(context) => showDialog(
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
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => LoginPage()
                    )
                  );
                },
              )
          )
        ],
      )
  );
}

//SizedBox(
// width: w*0.9,
// height: h*0.08,
// child: Container(
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.circular(30),
// boxShadow: [
// BoxShadow(
// blurRadius: 10,
// spreadRadius: 7,
// offset: Offset(1, 1),
// color: Colors.grey.withOpacity(0.2),
// )
// ]
// ),
// child: DropdownButton<String>(
// value: dropdownValue,
// icon: const Icon(Icons.arrow_downward),
// elevation: 16,
// style: const TextStyle(color: Colors.deepPurple),
// underline: Container(
// height: 2,
// color: Colors.deepPurpleAccent,
// ),
// onChanged: (String value) {
// // This is called when the user selects an item.
// setState(() {
// dropdownValue = value;
// });
// },
// items: list.map<DropdownMenuItem<String>>((String value) {
// return DropdownMenuItem<String>(
// value: value,
// child: Text(value),
// );
// }).toList(),
// )
// ),
// ),

