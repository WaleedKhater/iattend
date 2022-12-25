import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget sectionbutton(
 Function function ,
  String text ,
) => 
Container(
  child: MaterialButton(    
    onPressed:  () {},
  child: Text( 
    text ,
    style: TextStyle(
      fontSize: 20,
     )
  ),
));
