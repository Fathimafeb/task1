import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task1/Login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var Username=TextEditingController();
  var Phone=TextEditingController();
  var Email=TextEditingController();
  var Password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue[600],
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(mainAxisAlignment:MainAxisAlignment.center ,
          children: [
            Text("SIGNUP",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 35,color:Colors.white),),
            SizedBox(height: 20,),
            Container(
              height: 450,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(height: 60,width: double.infinity,
                        decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),border:Border.all(color: Colors.grey)  ),
                        child: TextFormField(
                          controller: Username,
                          decoration: InputDecoration(label: Text("  Username")),)),
                    Container(height: 60,width: double.infinity,
                        decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),border:Border.all(color: Colors.grey)  ),
                        child: TextFormField(
                          controller: Phone,
                          decoration:  InputDecoration(label: Text("  Phone number")),)),
                    Container(height: 60,width: double.infinity,
                        decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),border:Border.all(color: Colors.grey)  ),
                        child: TextFormField(
                          controller: Email,
                          decoration: InputDecoration(label: Text("  Email id")),)),
                    Container(height: 60,width: double.infinity,
                        decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),border:Border.all(color: Colors.grey)  ),
                        child: TextFormField(
                          controller: Password,
                          decoration:  InputDecoration(label: Text("  Password")),)),
                    Container(height: 60,width: double.infinity,
                      decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),color: Colors.blue  ),
                      child: Center(child: Text("SIGNUP",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 30,color:Colors.white),)),

                    ),

                  ],
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Do you have an account?",style: TextStyle(fontSize: 20),),
                InkWell(
                  onTap:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Loginpage();
                    },));
                  },
                    child: Text(" Login",style: TextStyle(color: Colors.white,fontSize: 22),))
              ],
            )
          ],
        ),
      ),

    );
  }





}
