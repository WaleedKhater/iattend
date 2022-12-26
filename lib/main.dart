import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:iattend/modules/abbsence/abbsence.dart';
import 'package:iattend/modules/sections/cppsections.dart';
import 'modules/login/login.dart';

void main() async { 
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
//fffffffffffffff

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:login (),
      ) ;
  }
}