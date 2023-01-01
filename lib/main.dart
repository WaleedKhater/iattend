import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iattend/business_logic/layout_cubit/layout_cubit.dart';
import 'package:iattend/modules/abbsence/abbsence.dart';
import 'package:iattend/modules/home/home_screen.dart';
import 'package:iattend/modules/sections/cppsections.dart';
import 'business_logic/bloc_observer.dart';
import 'modules/login/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) =>LayoutCubit()..getAllSections(),),
      ],
      child: BlocConsumer<LayoutCubit, LayoutState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home:home_screen(),
          ) ;
        },
      ),
    );
  }
}