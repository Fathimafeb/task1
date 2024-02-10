import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/mainpage.dart';
import 'package:task1/signup.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final username= TextEditingController();
  final password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue[600],
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(mainAxisAlignment:MainAxisAlignment.center ,
          children: [
            Text("LOGIN",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 35,color:Colors.white),),
            SizedBox(height: 20,),
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(height: 60,width: double.infinity,
                        decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),border:Border.all(color: Colors.grey)  ),
                        child: TextFormField(
                          controller: username,
                          decoration: InputDecoration(label: Text("  Username")),)),
                    Container(height: 60,width: double.infinity,
                        decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),border:Border.all(color: Colors.grey)  ),
                        child: TextFormField(
                          controller: password,
                          decoration:  InputDecoration(label: Text("  Password")),)),
                    InkWell(
                      onTap: () {
                        login(context);
                      },
                      child: Container(height: 60,width: double.infinity,
                          decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),color: Colors.blue  ),
                        child: Center(child: Text("LOGIN",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 30,color:Colors.white),)),

                          ),
                    ),

                  ],
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Do you have an account?",style: TextStyle(fontSize: 20),),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Signup();
                    },));
                  },
                    child: Text(" Signup",style: TextStyle(color: Colors.white,fontSize: 22),))
              ],
            )
          ],
        ),
      ),

    );
  }
  void login(BuildContext context) {
    if (username.text == 'user' && password.text == 'user123') {
      
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Invalid username or password'))
      );
    }
  }
}
