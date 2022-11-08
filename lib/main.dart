// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:weather_app/index.dart';
void main()=> runApp(MaterialApp(
    
    theme: ThemeData(
      primaryColor: Colors.green, accentColor: Colors.white70
    ),
    debugShowCheckedModeBanner: false,
    home: IndexPage(),
  ));

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Weather App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Help Screen"),
        ),
        body: new Container(
          color: Color(0xff258DED),
          height: 800.0,
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Text('Welcome to the weather app', style: TextStyle(fontSize: 35),),
                height: 300,
                width: 600,
                decoration: new BoxDecoration(
                    image: DecorationImage(
                        image: new AssetImage('assets/logo.png'),
                        fit: BoxFit.fill
                    ),
                    shape: BoxShape.circle
                ),
              ),
              Container(
                child: ElevatedButton(
          child: const Text('Open App'),
          onPressed: () {
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MyApp()),
  );
          },
        ),
              ),
            ],
          ),
        ),
        ),
        );
  }
}
