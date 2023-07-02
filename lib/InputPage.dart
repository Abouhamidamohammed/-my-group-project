import 'dart:html';

import 'package:card/CardPage.dart';
import 'package:card/Constants.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final name = TextEditingController();
  final PhoneNumber = TextEditingController();
  final Email = TextEditingController();
  late File _image;
  getItemAndNavigate(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CardPage(
          nameHolder: name.text,
          numberHolder: PhoneNumber.text,
          emailHolder: Email.text,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/angela.jpg'),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: 280,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: name,
                  autocorrect: true,
                  decoration: kInputDecoration.copyWith(hintText: 'Enter your Name',icon: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),),
                )),
            Container(
                width: 280,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: PhoneNumber,
                  autocorrect: true,
                  decoration:
                      kInputDecoration.copyWith(hintText: 'Enter your Phone Number',
                        icon: Icon(
                          Icons.phone_android,
                          color: Colors.black,
                        ),),
                )),
            Container(
                width: 280,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: Email,
                  autocorrect: true,
                  decoration: kInputDecoration.copyWith(
                    icon: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    hintText: 'Enter Your Email',
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () => getItemAndNavigate(context),
              child: Container(
                child: Center(
                  child: Text(
                    "Show your card",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),

                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white54,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
