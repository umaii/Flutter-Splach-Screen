import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:twitter_auth_screens_redesign/Animation/FadeAnimation.dart';
import 'package:twitter_auth_screens_redesign/twitter/twitter_SignIn.dart';
import 'package:twitter_auth_screens_redesign/twitter/twitter_SignUp.dart';

class TwitterBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(

          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,


          ),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              SizedBox(height: 20),

              Container(
                width: 40,
                height: 40,
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/image/twitter.png'),

                ),

              ),

              SizedBox(height: 200),


              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children:<Widget>[

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [


                        Text.rich(
                            TextSpan(
                                text: " See What's \n",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,

                                ),
                                children: <InlineSpan>[
                                  TextSpan(
                                    text: ' happening in the \n',
                                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
                                  ),
                                  TextSpan(
                                    text: ' world right now.',
                                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
                                  ),



                                ]
                            )
                        ),

                        SizedBox(height: 50),


                        FadeAnimation(1.6, Container(
                            height: 45,
                            width: 300,

                            // margin: EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xFF00acee)
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) => TwitterSignUp()),);
                              },
                              child: Center(
                                child: Text("Create account", style: TextStyle(fontSize: 22,color: Colors.white, fontWeight: FontWeight.bold),),
                              ),
                            )
                        )),

                        SizedBox(height:160 ),

                      ],
                    ),

                  ]
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:50),

                    child: Column(

                      // crossAxisAlignment: CrossAxisAlignment.s,
                      children: [

                        Text.rich(
                            TextSpan(
                                text: "Have an account already ? ",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,

                                ),
                                children: <InlineSpan>[

                                  TextSpan(
                                    text: 'Log in',
                                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.lightBlue),
                                    recognizer: TapGestureRecognizer()..onTap = () {
                                        Navigator.push(context,MaterialPageRoute(builder: (context) => TwitterSignIn()),);
                                        // single tapped
                                      },
                                  ),
                                ]
                            )
                        ),

                      ],
                    ),
                  )
                ],
              )




            ],
          ),
        ),
      ),
    );
  }
}
