import 'package:flutter/material.dart';
import 'package:iattend/modules/home/home_screen.dart';
class abbsence extends StatefulWidget {
  abbsence({Key ,this.title = 'A',}) ;
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<abbsence> {
  bool _checkbox = false;
  bool _checkboxListTile = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          title: const  Text('I Attend',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold ,
          fontSize: 40 ,
          
        ),),
         backgroundColor: Color(0xFF1E4578),
         actions: [
          TextButton(onPressed: (){
            if( _checkboxListTile ==true)
            {
              print('hi');
            }
            Navigator.push(context,
                       MaterialPageRoute(
                        builder: (context) => home_screen(),
                       ));
          },
           child: Text('Save' ,
           style: TextStyle(color: Colors.white),))
         ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 25,),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.platform,
              title: Text('1. Waleed Khater',
              style: TextStyle(fontSize: 20),),
              value: _checkboxListTile,
              onChanged: (_) {
                setState(() {
                  _checkboxListTile = !_checkboxListTile;
                });
              },
            ),
             CheckboxListTile(
              controlAffinity: ListTileControlAffinity.platform,
              title: Text('2. Yosef Khater',
              style: TextStyle(fontSize: 20),),
              value: _checkboxListTile,
              onChanged: (_) {
                setState(() {
                  _checkboxListTile = !_checkboxListTile;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}