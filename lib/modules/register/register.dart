import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iattend/modules/login/login.dart';

class register extends StatelessWidget {
    var fname=TextEditingController();
    var lname=TextEditingController();
    var econtrol=TextEditingController();
    var pcontrol=TextEditingController();
    var pccontrol=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
       AppBar(
        backgroundColor: Color(0xFF1E4578),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
              Navigator.pop(context,
                      MaterialPageRoute(
                        builder: ((context) => login())
                        )
                        );
          },
        icon: Icon(Icons.arrow_back,),
      ),
        title: Text('I Attend',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold ,
          fontSize: 40 ,
          
        ),
        )
    ),
      body:
       SingleChildScrollView(
         child: Padding(
          
           padding: const EdgeInsets.all(20.0),
           child: Container(
            width: double.infinity,
             child: Column(
                
                children: [
                  Text(
                    'Register' ,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40 ,
                      fontWeight: FontWeight.bold 
                    ),
                  ),
                  SizedBox(height: 35,) ,

                  Container(
                  height: 140,
                  width: 140,
                  
                  child: Image(
                    image: AssetImage('images/Attend.png'),
                  )
                ),
                  SizedBox(height: 20,),
                  Row(
                   
                    children: [
                      Expanded(
                        child: Container(
                          
                          width: 210,
                          child: TextFormField(
                            
                            controller: fname,
                            onFieldSubmitted: (value) {
                              
                            },
                            decoration: InputDecoration(
                              labelText: 'First Name' ,
                              border: OutlineInputBorder(),
                            ),
                            
                          ),
                        ),
                      ),
                      SizedBox(width: 30,),
                      Expanded(
                        child: Container(
                          
                          width: 220,
                          child: TextFormField(
                            
                            controller: lname,
                            onFieldSubmitted: (value) {
                              
                            },
                            decoration: InputDecoration(
                              labelText: 'Last Name' ,
                              border: OutlineInputBorder(),
                            ),
                            
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                controller: econtrol,
                keyboardType: TextInputType.emailAddress, 
                onFieldSubmitted: (value) {
                  
                } ,
                decoration: InputDecoration(
                 labelText: 'Email Adress' ,
                 border: OutlineInputBorder(),
                 prefixIcon: Icon(Icons.email),
                 
                ),
              ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: pcontrol,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password' ,
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.lock),
                  suffixIcon: Icon(
                    Icons.remove_red_eye),
                ),
                  ),
                  SizedBox(height: 20,),  
                  TextFormField(
                    controller: pccontrol,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm Password' ,
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.lock),
                  suffixIcon: Icon(
                    Icons.remove_red_eye),
                ),
                  ),
                  SizedBox(height: 20,),
                   Container(
                width: double.infinity,
                height: 40,
                child: MaterialButton(
                  onPressed: ()
                  {
                    Navigator.pop(context,
                      MaterialPageRoute(
                        builder: ((context) => login())
                        )
                        );
                  },
                  color: Color(0xFF1E4578),
                  child: Text(
                    'Register' ,
                    style: TextStyle(
                      color: Colors.white ,
                    ),
                  ),
                  ),
              ),
                ],
             ),
           ),
         ),
       ),
    );
  }
}