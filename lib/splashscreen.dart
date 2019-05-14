import 'package:flutter/material.dart';
import 'package:template_flutter/stacked_icon.dart';
import 'package:template_flutter/login.dart';

void main(){
  runApp(
    MaterialApp(
      home: MyApp(),
    )
  );
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  @override
  void initState(){
    super.initState();
    Future.delayed(
      Duration(seconds: 5),
        (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()
          ),
        );
        }
    );
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     body : Center(
       child: new StakedIcons()
     )
    );
  }

}
