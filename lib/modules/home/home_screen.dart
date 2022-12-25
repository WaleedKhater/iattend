
import 'package:flutter/material.dart';
import 'package:iattend/modules/sections/cppsections.dart';
import 'package:iattend/modules/selection/selction.dart';

import '../sections/javasections.dart';
import '../sections/vbsections.dart';


class home_screen extends StatelessWidget {
  void selectSecreen(BuildContext c) {
    Navigator.of(c).push(MaterialPageRoute(builder: (_) {
      return selction();
    }));
  }
  @override
  Widget build(BuildContext context) {
    var btnStyle = const ButtonStyle(
        backgroundColor:
            MaterialStatePropertyAll(Color(0xFF1E4578)),
        padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 70.0, vertical: 30.0)),
        foregroundColor:
            MaterialStatePropertyAll(Color.fromARGB(255, 255, 255, 255)),
        elevation: MaterialStatePropertyAll(10)  );

    return Scaffold(
        
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const  Text('I Attend',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold ,
          fontSize: 40 ,
          
        ),),
          centerTitle: true,
          backgroundColor: Color(0xFF1E4578),
          foregroundColor: Color.fromARGB(255, 255, 255, 255),
          elevation: 1,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 250,
                  height: 100,
                    child: OutlinedButton(
                        style: btnStyle,
                        onPressed: () {
                            Navigator.push(context,
                       MaterialPageRoute(
                        builder: (context) => vbsections(),
                       ));
                        },
                        child: const Text("VisualBasic",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ))),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Container(
                  width: 250,
                  height: 100,
                  child: OutlinedButton(
                    
                      style: btnStyle,
                      
                      onPressed: () {
                               Navigator.push(context,
                       MaterialPageRoute(
                        builder: (context) => cppsections(),
                       ));
                      },
                      child: const Text("C++",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ))),
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Container(
                  width: 250,
                  height: 100,
                  child: OutlinedButton(

                      style: btnStyle,
                      onPressed: () {
                               Navigator.push(context,
                       MaterialPageRoute(
                        builder: (context) => javasections(),
                       ));
                      },
                      child: const Text("Java",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ))),
                ),
              ]),
            ],
          ),
        ));
  }
}