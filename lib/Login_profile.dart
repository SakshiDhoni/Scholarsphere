import 'package:coverpage/MainDashBoard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:coverpage/MainDashBoard.dart';
import 'package:firebase_database/firebase_database.dart';



class Login_Profile extends StatefulWidget {
  const Login_Profile({Key? key}) : super(key: key);


  @override
  State<Login_Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Login_Profile> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 45, bottom: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_sharp,
                      semanticLabel: 'back',
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      print('Back Button');
                    },
                  ),
                ],
              ),

              Container(
                margin: EdgeInsets.all(50),
                child: Column(
                  children: [
                    Text(
                      'Create Your Profile',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),

                    SizedBox(height: 15, width: 10),

                    Text(
                      'Provide your profile picture and display your name to make easy delivery',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xE8757474),
                        fontFamily: 'Poppins',
                      ),
                    ),

                    SizedBox(height: 30, width: 10),

                    Image.asset(
                      'assets/images/person.png',
                      width: 80,
                      height: 80,
                      fit: BoxFit.fitHeight,
                    ),

                    SizedBox(height: 30, width: 10),
                    Container(
                      padding: EdgeInsets.all(3),
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: TextField(

                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Name",
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 30, width: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainDashBoard(),
                          ),
                        );
                      },
                      child: const Text('Continue'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlueAccent,
                        onPrimary: Colors.white,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 100,
                          vertical: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
