import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iattend/business_logic/layout_cubit/layout_cubit.dart';
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

  var nameController = TextEditingController();
  var numberController = TextEditingController();
  bool isbottomsheetopened = false;
  final formkey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var btnStyle = const ButtonStyle(
        backgroundColor:
        MaterialStatePropertyAll(Color(0xFF1E4578)),
        padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 70.0, vertical: 30.0)),
        foregroundColor:
        MaterialStatePropertyAll(Color.fromARGB(255, 255, 255, 255)),
        elevation: MaterialStatePropertyAll(10));

    return BlocConsumer<LayoutCubit, LayoutState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = LayoutCubit.get(context);
        return Scaffold(
            appBar: AppBar(
              leading: const Icon(Icons.menu),
              title: const Text('I Attend',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,

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
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
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
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
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
            ),
          floatingActionButton: FloatingActionButton(
              // onPressed: () {
              //   cubit.createSection(sectionName: 'amr', sectionNumber: 1);
              // },
              onPressed: () {
                if (isbottomsheetopened==true) {
                  if (formkey.currentState!.validate()) {
                    {
                      Navigator.pop(context);
                      isbottomsheetopened = false;
                    }
                    ;
                  }
                } else {
                  scaffoldKey.currentState!.showBottomSheet((context) => Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Form(
                          key: formkey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextFormField(
                                controller: nameController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter The Section Name';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  labelText: 'Section Name',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                controller: numberController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter The Section Number';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  labelText: 'Section Number',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ));
                  isbottomsheetopened = true;
                }
              },
              child: const Icon(Icons.add)),
        );
      },
    );
  }
}