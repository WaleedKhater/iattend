import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iattend/modules/selection/selction.dart';

import '../../shared/components/components.dart';

class cppsections extends StatelessWidget {
  const cppsections({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        backgroundColor: Color(0xFF1E4578),
        title: Text('I Attend',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold ,
          fontSize: 40 ,
          
        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(  
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                  SizedBox(height: 50,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                   Container(
                    width: 250,
                    height: 80,
                     child: MaterialButton(
                      onPressed: (){    
                               Navigator.push(context,
                       MaterialPageRoute(
                        builder: (context) => selction(),
                       ));
                      },
                      color: Color(0xFF1E4578),
                      child: Text(
                        'Section 1' ,
                        style: TextStyle(
                          color: Colors.white ,
                        ),
                      ),
                      ),
                   ),
                    ]
                ),
                SizedBox(height: 50,) ,
                Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                   Container(
                    width: 250,
                    height: 80,
                     child: MaterialButton(
                      onPressed: (){    
                               Navigator.push(context,
                       MaterialPageRoute(
                        builder: (context) => selction(),
                       ));
                      },
                      color: Color(0xFF1E4578),
                      child: Text(
                        'Section 2' ,
                        style: TextStyle(
                          color: Colors.white ,
                        ),
                      ),
                      ),
                   ),
                    ]),
                    SizedBox(height: 50,),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                   Container(
                    width: 250,
                    height: 80,
                     child: MaterialButton(
                      onPressed: (){    
                               Navigator.push(context,
                       MaterialPageRoute(
                        builder: (context) => selction(),
                       ));
                      },
                      color: Color(0xFF1E4578),
                      child: Text(
                        'Section 3' ,
                        style: TextStyle(
                          color: Colors.white ,
                        ),
                      ),
                      ),
                   ),
                    ]
                ),
                SizedBox(height: 50,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                   Container(
                    width: 250,
                    height: 80,
                     child: MaterialButton(
                      onPressed: (){  
                               Navigator.push(context,
                       MaterialPageRoute(
                        builder: (context) => selction(),
                       ));
                      },
                      color: Color(0xFF1E4578),
                      child: Text(
                        'Section 4' ,
                        style: TextStyle(
                          color: Colors.white ,
                        ),
                      ),
                      ),
                   ),
                    ]
                ),
            ],
          ),
        ),
      ),
    );
  }
}