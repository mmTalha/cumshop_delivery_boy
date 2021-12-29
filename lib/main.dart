import 'package:delivery_boy_application/login_signup_screens/signup_screen.dart';
import 'package:flutter/material.dart';

import 'login_signup_screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.

        primarySwatch: Colors.blue,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),


      ),

      home: MyHomePage( ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, }) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".



  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Color.fromRGBO( 24, 193, 128,1),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Container(child: Image.asset('images/Bike.png'))),
          SizedBox(height: 25,),
          Center(child: Text( 'Welcome to ',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 30,color: Colors.white),)),
          Center(child: Text( 'comchop Driver App',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 30,color: Colors.white),)),
          SizedBox(height: 25,),
          Center(
            child:
            Container(
              child:
              Row(
                crossAxisAlignment: CrossAxisAlignment. center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 41,
                      width: 124,
                      child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          color: Color.fromRGBO(252, 186, 24, 1),
                          child: Text(
                            'Signin',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                  login_screen()),
                            );
                          })),
                  SizedBox(width: 40,),
                  Container(
                      height: 41,
                      width: 124,
                      child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          color: Color.fromRGBO(252, 186, 24, 1),
                          child: Text(
                            'Signup',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      signup_screen( )),
                            );
                          })),
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
