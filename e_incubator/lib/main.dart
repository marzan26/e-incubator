import 'package:e_incubator/client_1.dart';
import 'package:e_incubator/device_details.dart';
import 'package:e_incubator/device_details_staff.dart';
import 'package:e_incubator/duty_staff_1.dart';
import 'package:e_incubator/egg_turn_card.dart';
import 'package:e_incubator/history_client.dart';
import 'package:e_incubator/history_supervisor.dart';
import 'package:e_incubator/hum_details_2.dart';
import 'package:e_incubator/temp_details_2.dart';
import 'package:e_incubator/turn_history1.dart';
import 'package:e_incubator/humidity_details_supervisor.dart';
import 'package:e_incubator/login_page.dart';
import 'package:e_incubator/main_page.dart';
import 'package:e_incubator/profile_supervisor.dart';
import 'package:e_incubator/signup_page.dart';
import 'package:e_incubator/supervisor_1.dart';
import 'package:e_incubator/temp_details_supervisor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

