
import 'dart:io';

import 'package:delivery_boy_application/login_signup_screens/welcome_listile_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class driving_license_backside extends StatefulWidget {
  const driving_license_backside({ Key? key }) : super(key: key);

  @override
  _driving_license_backsideState createState() => _driving_license_backsideState();
}

class _driving_license_backsideState extends State<driving_license_backside> {
  @override
  Widget build(BuildContext context) {
    File? _image;
    final imagePicker = ImagePicker();
    _imgFromCamera() async {
      var image = await imagePicker.getImage(
          source: ImageSource.camera, imageQuality: 50);

      setState(() {
        _image = File(image!.path.toString());
      });
    }
    _getFromGallery() async {
      PickedFile? pickedFile = await ImagePicker().getImage(
        source: ImageSource.gallery,
        imageQuality: 50,

      );
      if (pickedFile != null) {

        setState(() {
          _image = pickedFile as File?;
        });


        print(_image );
      }
    }
    _imgFromGallery() async {
      var image = await imagePicker.pickImage(
          source: ImageSource.gallery, imageQuality: 50);


      setState(() {
        _image = File(image!.path);
      });
    }
    Future getrimg ()async{
       final image =  await imagePicker.pickImage(source:   ImageSource.gallery);
      setState(() {
        _image = image!.path as File    ;
      });
    }
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
              child: _image== null?  Image.asset( 'images/idcardback.png')
                  :Image.file(_image!)),
            // Center(
            //     child: CircleAvatar(
            //       radius: 55,
            //       backgroundColor: Colors.grey,
            //       child: _image !==nu
            //          ClipRRect(
            //         borderRadius: BorderRadius.circular(50),
            //         child: Image.file(
            //           _image!,
            //           width: 100,
            //           height: 100,
            //           fit: BoxFit.fitHeight,
            //         ),
            //       )
            //           : Container(
            //         decoration: BoxDecoration(
            //             color: Colors.grey[200],
            //             borderRadius: BorderRadius.circular(50)),
            //         width: 100,
            //         height: 100,
            //         child: Icon(
            //           Icons.camera_alt,
            //           color: Colors.grey[800],
            //         ),
            //       ),
            //     )),
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
                            getrimg ();
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (BuildContext context) =>
                            //           welcome_listtile_screen()),
                            // );
                          })),
               ),
          ],
        ),
      ),
    );


  }
}