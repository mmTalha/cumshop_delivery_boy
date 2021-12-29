import 'package:delivery_boy_application/login_signup_screens/welcome_listile_screen.dart';
import 'package:flutter/material.dart';





class id_card_backside extends StatelessWidget {
  const id_card_backside({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      elevation: 0.0,
      leading: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,),

    ),
    body: Container(
        padding: EdgeInsets.only(
          top: 5,
          bottom: 10,
          left: 15,
          right: 15,
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Center(
                child:
                Text(
                  'Take a photo of your Social Security Card',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
                )),
           SizedBox(height: 10,),
            Center(
                child: Text(
                  'Take Picture of Whole card (include all corners).\nMake sure that Picture is clear and all words are easily readable. If any of the information is blurry or too shiny (from camera flash ), card will be rejected. ',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                )),
                SizedBox(height: 15,),
            Container(
              child: Image.asset( 'images/idcardback.png'),
            ),
             SizedBox(height: 215,),
             Center(
               child: Container(
                      height: 48,
                      width: 335,
                      child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          color: Color.fromRGBO(252, 186, 24, 1),
                          child: Text(
                            'Take PHOTO',
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
                                      welcome_listtile_screen()),
                            );
                          })),
             ),
          ],
        ),
      ),
    );
  }
}