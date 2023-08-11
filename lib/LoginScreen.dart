import 'package:flutter/material.dart';
import 'package:animated_switch/animated_switch.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
          body: Stack(
            children: [
              const Image(
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                  image: AssetImage('assets/splashimg.jpg')),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Colors.black,
                          Colors.black.withOpacity(0.8),
                          Colors.black.withOpacity(0.15),
                          Colors.black.withOpacity(0.5),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter
                    )
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Login',style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,

                    ),),
                    SizedBox(height: 30,),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Email Adress',
                        label: Text('Email Address'),
                          fillColor: Color(0xffD8D8DD),
                          filled: true,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Email Adress',
                          label: Text('Password'),
                          suffixIcon: Icon(Icons.visibility_off),
                          fillColor: Color(0xffD8D8DD),
                          filled: true,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 19,top: 8,right: 19),
                      child: Row(
                   children: [
                       AnimatedSwitch(
                         colorOff: Color(0xffA09F99),
                       ),
                     SizedBox(width: 5,),
                     Text('Remember me',style: TextStyle(
                       color: Colors.grey,
                     ),),
                     Spacer(),
                     Text("Forgot Password",style: TextStyle(
                       color: Colors.grey,
                     ),),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Color(0xff0ACF83),
                      ),
                      child: Center(child: Text('Login',
                          style: TextStyle(
                              color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),),),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0,right: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('-----------',style: TextStyle(color: Colors.white,fontSize: 30),),
                          Text('Or Login With',style: TextStyle(color: Colors.white,),),
                          Text('-----------',style: TextStyle(color: Colors.white,fontSize: 30),),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color(0xff484848),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Icon(Icons.g_mobiledata,color: Colors.white,size: 40,),
                      ),
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xff484848),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Icon(Icons.apple,color: Colors.white,size: 40,),
                        ),
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xff484848),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Icon(Icons.facebook,color: Colors.white,size: 40,),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0,top: 30),
                      child: Row(
                        children: [
                          Text("Don't have an account?",style: TextStyle(
                            color: Colors.grey,
                          ),),
                          Text("Sinup",style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
  }
}
