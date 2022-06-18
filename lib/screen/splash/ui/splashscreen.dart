// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:gml/utils/constant.dart';
import 'package:gml/utils/sharedpref.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../login/login.dart';


class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  late String logo = "";
  late bool logoCheck = false;

  late bool loggedCheck = false;

  late bool isStudent = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: initScreen(context),
      backgroundColor: Colors.white,
    );
  }

  startTime() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    logoCheck = _prefs.containsKey("CollegeLogo");

    print(logoCheck);

    if (logoCheck) {
      String logoPath = await SharedPref().getLogo();
      setState(() {
        logo = Constants.Img_Url + logoPath.replaceAll(" ", "%20");
      });
      print("logo>>>> " + logo);
    }

    loggedCheck = _prefs.containsKey("FirstTime");
    if (loggedCheck) {
      String role = await SharedPref().getRole();

      isStudent = role.contains("student");
    }

    var duration = Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() async {
    // SharedPreferences _prefs = await SharedPreferences.getInstance();
    // bool loggedCheck = _prefs.containsKey("FirstTime");
    // bool isStudent = false;
    // if (loggedCheck) {
    //   String role = await SharedPref().getRole();

    //   isStudent = role.contains("student");
    // }
    // bool isStudent = _prefs.("student");
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => 
            // loggedCheck
                // ? isStudent
                //     ? StudentHome()
                //     : StaffHome()
                // :
                 Login()));
  }

  initScreen(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logoCheck ? instLogo() : staticLogo(),

            Image(
              image: AssetImage("assets/images/gml_logo.png"),
              height: 200.0,
              width: 300.0,
              alignment: AlignmentDirectional.center,
            ),
            SizedBox(height: 20),

            Padding(padding: EdgeInsets.only(top: 20.0)),

            // CircularProgressIndicator(
            //   backgroundColor: Colors.black,
            //   strokeWidth: 1,
            // ),

            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: Image(
            //   image: AssetImage("assets/images/medicines.jpg"),
            //   height: 200.0,
            //   width: 300.0,
            //   alignment: AlignmentDirectional.center,
            // ),
            // )

          ],
        ),
      ),
    );
  }

  img() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    bool logoCheck = _prefs.containsKey("logo");

    if (logoCheck) {
      logo = Constants.Img_Url +
          SharedPref().getLogo().toString().replaceAll(" ", "%20");
    }

    return logoCheck ? instLogo() : staticLogo();
  }

  staticLogo() {
    return Image(
      image: AssetImage("assets/images/logo.png"),
      height: 100.0,
      width: 200.0,
      alignment: AlignmentDirectional.center,
    );
  }

  instLogo() async {
    return Image(
      image: NetworkImage(logo),
      height: 100.0,
      width: 200.0,
      alignment: AlignmentDirectional.center,
    );
  }

//   FutureBuilder(
//   future: getData(),
//   builder: (context, snapshot){
//     return ListTile(
//       title: Text("${snapshot.data.toString()}"),
//     );
//   },
// ),
}
