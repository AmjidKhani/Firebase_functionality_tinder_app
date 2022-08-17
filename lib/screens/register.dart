import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Firebase/firebasehelper.dart';
import 'home_screen.dart';
import 'login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  bool obsecureText = true;

  bool _value = false;


  register()async {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1F2123),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,

          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 80,),
                ClipPath(
                  clipper:WaveClipper(),
                  child: Container(
                    //height: MediaQuery.of(context).size.height/1.1,
                    width: double.infinity,
                    color: Color(0xff27292D),

                    child: ClipPath(
                      clipper: WaveClippertwo(),
                      child: Container(
                        //height: MediaQuery.of(context).size.height/1.1,
                        width: double.infinity,
                        color: Theme.of(context).primaryColor,

                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: 50,),
                              SizedBox(height: 20,),
                              SizedBox(height: 50,),
                              Text("Create new account", style: TextStyle( color: Colors.white,
                                  fontFamily: "Rubik", fontSize: 25, fontWeight: FontWeight.bold)),
                              SizedBox(height: 20,),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10,),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                                      width: double.maxFinite,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Color(0xff1E1E1E),
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                      child: TextField(
                                        controller: emailcontroller,
                                        keyboardType: TextInputType.emailAddress,

                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Rubik"
                                        ),
                                        cursorColor: Color(0xffF89009),
                                        decoration: InputDecoration(
                                          hintText: "Email",
                                          hintStyle: TextStyle(
                                              fontSize: 15,
                                              color: Color(0xff828282),
                                              fontFamily: "Rubik"
                                          ),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10,),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                                      width: double.maxFinite,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Color(0xff1E1E1E),
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                      child: TextField(
                                        controller: passwordcontroller,
                                        keyboardType: TextInputType.text,

                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Rubik"
                                        ),
                                        obscureText: obsecureText,
                                        cursorColor: Color(0xffF89009),
                                        decoration: InputDecoration(
                                            hintText: "Password",
                                            hintStyle: TextStyle(
                                                fontSize: 15,
                                                color: Color(0xff828282),
                                                fontFamily: "Rubik"
                                            ),
                                            border: InputBorder.none,
                                            suffixIcon: IconButton(
                                                onPressed: (){
                                                  setState(() {
                                                    obsecureText = !obsecureText;
                                                  });
                                                },
                                                icon: Icon(obsecureText ?Icons.visibility:Icons.visibility_off,color: Theme.of(context).accentColor,)
                                            )
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 20,),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: FlatButton(
                                  height: 50,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  minWidth: double.maxFinite,
                                  color: Colors.white,
                                  onPressed: (){
                                    firebaseHelper().signup(emailcontroller.text,passwordcontroller.text);
                                    Navigator.push(context, CupertinoPageRoute(builder: (_)=>MainScreen()));

                                  },
                                  child: Text("Sign up",style: TextStyle(
                                      fontFamily: "Rubik",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black
                                  ),),
                                ),
                              ),

                              SizedBox(height: 20,),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width/2.5,
                                      child: Divider(
                                        height: 2,
                                        color: Colors.white,
                                      ),
                                    ),

                                    Text("Or",style: TextStyle(
                                        color: Colors.white
                                    ),),

                                    Container(
                                      width: MediaQuery.of(context).size.width/2.5,
                                      child: Divider(
                                        height: 2,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 20,),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: FlatButton(
                                  height: 50,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  color: Colors.white,
                                  onPressed: (){},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image(
                                        image: AssetImage("assets/images/google.png"),
                                        width: 25,
                                        height: 25,
                                      ),
                                      SizedBox(width: 10,),
                                      Text("Sign up with Google",style: TextStyle(
                                        fontFamily: "Rubik",
                                        fontSize: 16,
                                      ),)
                                    ],
                                  ),
                                ),
                              ),

                              SizedBox(height: 20,),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Aready have an account?",style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white
                                  ),),

                                  TextButton(
                                      onPressed: (){


                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                                      },
                                      child: Text("Sign in",style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: "Rubik",
                                          fontWeight: FontWeight.w500,
                                          color: Theme.of(context).accentColor
                                      ),))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {

    debugPrint(size.width.toString());

    var path = new Path();
    path.lineTo(0, 100); //start path with this if you are making at bottom

    var firstStart = Offset(size.width / 5, 110);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, 50.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width - (size.width / 3.24), -30);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, 30);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);//end with this path if you are making wave at bottom
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; //if new instance have different instance than old instance
    //then you must return true;
  }
}


class WaveClippertwo extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {

    debugPrint(size.width.toString());

    var path = new Path();
    path.lineTo(0, 100); //start path with this if you are making at bottom

    var firstStart = Offset(size.width / 5, 110);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, 50.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width - (size.width / 3.24), 0);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, 70);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);//end with this path if you are making wave at bottom
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; //if new instance have different instance than old instance
    //then you must return true;
  }
}