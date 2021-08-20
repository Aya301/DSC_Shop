import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'sign.dart';

class screen extends StatefulWidget {
  const screen({Key key}) : super(key: key);

  @override
  _screenState createState() => _screenState();
}
class _screenState extends State<screen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 7),
            ()=> Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context)=> sign())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:DecorationImage( image:  AssetImage('image/splash.jpg',),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 60)),
          Text('DSC Shop',
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,
                color: Colors.white),),
          Padding(padding: EdgeInsets.only(top: 35)),
          SpinKitRipple(color: Colors.white,)
        ],
      ),
      backgroundColor: Colors.blue.shade900,
    );
  }
}
