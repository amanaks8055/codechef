// ignore: unused_import
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unnecessary_import, non_constant_identifier_names, unused_element, avoid_web_libraries_in_flutter, override_on_non_overriding_member

import 'dart:js';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/cupertino.dart';

class SplashScreen extends  StatefulWidget {

@override 
  State<SplashScreen> createState() => _SplashScreenState();
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
  }

  class _SplashScreenState extends State<SplashScreen> {
    @override
    void initState() {
      super.initState();

      Timer(Duration(seconds: 3), () {
        Navigator.pushReplacement(context as BuildContext, 
        MaterialPageRoute(builder: (context) => DashBoardScreen(),));
      }
      );
    }
  
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 95, 42, 216),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Image(image: AssetImage("C:/Users/Aman sharma/Desktop/codechef/SIgn-up-flutter/lib/assets/codechef.jpeg"),
          width: 300,),
          SizedBox(
            height: 50,
          ),
        ],),
      ),
    );
  }
  
  DashBoardScreen() {}
  
  void Timer(Duration duration, Null Function() param1) {}

