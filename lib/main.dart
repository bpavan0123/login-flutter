import 'package:login/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'Animation/FadeAnimation.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState(); 
}
bool passwordVisible;
class _HomePageState extends State<HomePage> {
           @override
           void initState() {
             passwordVisible = false;
             super.initState();
             }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.orange[900],
              Colors.orange[800],
              Colors.orange[400]
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 70,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(1, Text("Login", style: TextStyle( color: Colors.white, fontSize: 40),)),
                  SizedBox(height: 10,),
                  FadeAnimation(1.3, Text("Welcome Back", style: TextStyle(color: Colors.white, fontSize: 18),)),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 30,),
                      FadeAnimation(1.4, Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [BoxShadow(
                            color: Color.fromRGBO(225, 95, 27, .3),
                            blurRadius: 20,
                            offset: Offset(0, 10)
                          )]
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey[200]))
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  hintStyle: TextStyle(color: Colors.grey),
                                    prefixIcon: const Padding(
                                        padding: const EdgeInsets.only(top: 0),
                                        child: const Icon(Icons.email)),
                                  border: InputBorder.none,
                                
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey[200]))),
                              
                              child: TextFormField(
                                decoration : InputDecoration(
                                     border: InputBorder.none  ,
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    prefixIcon: const Padding(
                                        padding: const EdgeInsets.only(top: 0),
                                        child: const Icon(Icons.lock)),
                                    suffixIcon: IconButton(icon: Icon(
                                    passwordVisible ? Icons.visibility : Icons.visibility_off,
                                        color: Theme.of(context).primaryColorDark,
                                          ),
                                             onPressed: () {
                                                setState(() {
                                                passwordVisible = !passwordVisible;
                                                });
                                          }
                                          )  
                                ),
                                obscureText: !passwordVisible,
                              ),
                            ),
                          ],
                        ),
                      )),
                      SizedBox(height: 30,),
                      FadeAnimation(1.5, Text("Forgot Password?", style: TextStyle(fontSize: 19, color: Colors.grey),)),
                      SizedBox(height: 20,),
                      FadeAnimation(1.6, Container(
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        child: Column (
                         children: <Widget>[
                                 Flexible(
                                   flex: 50,
                                   child: Container(
                                   child: new RaisedButton(
                                    elevation: 0,
                                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 59.0),
                                    color: Colors.deepOrangeAccent ,
                                    textColor: Colors.white,
                                    child: Text('LOGIN',style: TextStyle(
                                      fontFamily: "Roboto",
                                    fontSize: 30.0,
                                    //fontWeight: FontWeight.bold,
                                    ),),
                                    onPressed: () {},
                                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.horizontal( left: Radius.circular(50.0), right: Radius.circular(50.0)))
                                    ),
                                    )
                                    ),
                                    SizedBox(height: 10,),
                          Flexible(
                                  flex: 50,
                                  child: Container(
                                  child :new RaisedButton(
                                  elevation: 0,
                              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                              color: Colors.deepOrangeAccent ,
                                       textColor: Colors.white,
                                child: Text('SIGNUP',style: TextStyle(
                                      fontFamily: "Roboto",
                                       fontSize: 30.0,
                                       //fontWeight: FontWeight.bold,
                                        ),),
                                onPressed: () {      },
                                shape: RoundedRectangleBorder( borderRadius: BorderRadius.horizontal( left: Radius.circular(50.0), right: Radius.circular(50.0)))
                                ),
                                 ),
                          ),
                          ],
                          mainAxisSize: MainAxisSize.min,
                        ),   
                      )),
                      SizedBox(height: 18,),
                      FadeAnimation(1.7, Text("Continue with social media", style: TextStyle(fontSize: 20,color: Colors.grey),)),
                      SizedBox(height: 20,),
                      Row(
                        children: <Widget>[
                          Flexible(
                            child: FadeAnimation(1.8, Container(
                              child: Center(
                                child: new RaisedButton(
                                  elevation: 0,
                                  color: Colors.blue,
                                   padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                                  child: Text("Facebook", style: TextStyle(color: Colors.white,fontSize: 24.0, fontWeight: FontWeight.bold),), 
                                  onPressed: () {},
                                   shape: RoundedRectangleBorder( borderRadius: BorderRadius.horizontal( left: Radius.circular(20.0), right: Radius.circular(20.0)))
                                )
                              ),
                            )
                            ),
                          ),
                        
                          Flexible(
                            child: FadeAnimation(1.9, Container(
                              child: Center(
                                child: new RaisedButton(
                                  elevation: 0,
                                  color: Colors.redAccent,
                                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 47.0),
                                  child: Text("Gmail", style: TextStyle(color: Colors.white,fontSize: 24.0, fontWeight: FontWeight.bold),), 
                                  onPressed: () {},
                                   shape: RoundedRectangleBorder( borderRadius: BorderRadius.horizontal( left: Radius.circular(20.0), right: Radius.circular(20.0)))
                                )
                              ),
                            )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
