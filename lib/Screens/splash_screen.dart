import 'dart:async';

import 'package:flutter/material.dart';

import 'login/sign_in.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _loadSplash();
  }

  _loadSplash() async {
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => SignIn())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            //decoration: BoxDecoration(color: Colors.blueGrey),
            child: Image.asset('assets/images/food_all.jpg',
            fit: BoxFit.cover,),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40.0,
                        child: Icon(
                          Icons.insert_emoticon,
                          color: Colors.redAccent,
                          size: 50.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "Restaurant App",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                      "Feels Good",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}