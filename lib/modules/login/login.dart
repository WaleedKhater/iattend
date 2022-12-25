import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iattend/modules/home/home_screen.dart';
import 'package:iattend/modules/register/register.dart';

class login extends StatelessWidget {
  var emailControl =TextEditingController();
    var passControl =TextEditingController();


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
      body: Padding(
        
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            
            children: [
              Text(
                'Login' ,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40 ,
                  fontWeight: FontWeight.bold 
                ),
              ),
              SizedBox(height: 40,),
              Container(
                    height: 140,
                    width: 140,
                    
                    child: Image(
                      image: AssetImage('images/Attend.png'),
                    )
                  ),
              SizedBox(height: 30,),
              TextFormField(
                controller: emailControl,
                keyboardType: TextInputType.emailAddress,
                onChanged:(value) {
                  
                } ,
                onFieldSubmitted: (value) {
                  
                } ,
                decoration: InputDecoration(
                 labelText: 'Email Adress' ,
                 border: OutlineInputBorder(),
                 prefixIcon: Icon(Icons.email),
                 
                ),
              ),
              SizedBox(height: 40,) ,
              TextFormField(
                controller: passControl,
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
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                height: 40,
                child: MaterialButton(
                  onPressed: ()
                  {
                   Navigator.push(context,
                       MaterialPageRoute(
                        builder: (context) => home_screen(),
                       )
                       );
                  },
                  color: Color(0xFF1E4578),
                  child: Text(
                    'LOGIN' ,
                    style: TextStyle(
                      color: Colors.white ,
                    ),
                  ),
                  ),
              ),
              SizedBox(height:25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?' ,
                    style: TextStyle( fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                       MaterialPageRoute(
                        builder: (context) => register(),
                       )
                       );
                    },
                     child: Text(
                      'Register Now',
                      style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 18),
                      
                      ))
                ],
              ),
            ],
          ),
        ),
      ),  
    );
  }
} 