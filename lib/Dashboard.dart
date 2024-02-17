import 'dart:async';

import 'package:coverpage/Mentor.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:coverpage/ExamMode.dart';
import 'package:coverpage/Subject.dart';
// import 'package:coverpage/AppLock.dart';
import 'package:coverpage/DeafMike.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_database/firebase_database.dart';

// FirebaseDatabase database = FirebaseDatabase.instance;
// DatabaseReference ref = FirebaseDatabase.instance.ref();
// final firebaseApp = Firebase.app();
// final rtdb = FirebaseDatabase.instanceFor(app: firebaseApp, databaseURL: 'https://console.firebase.google.com/project/scholorsphere/database/scholorsphere-default-rtdb/data/~2F');


class Dashboard extends StatefulWidget {
  final String username;
  const Dashboard({Key? key, required this.username}) : super(key: key);

  @override
  State<Dashboard> createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  String studentName = '';
  @override
  void initState() {
    super.initState();
    // Fetch student name from Firebase Realtime Database on initialization
    // DatabaseReference userRef = FirebaseDatabase.instance.ref('${widget.username}');

    // userRef.child('name').once().then((DataSnapshot snapshot) {
    //   setState(() {
    //     studentName = snapshot.value.toString();
    //   });
    // } as FutureOr Function(Object value)).catchError((error) {
    //   print("Failed to fetch student name: $error");
    // });



  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
         Column(
          children: [
            Container(
        
              color: Color(0xFFDFE7FA),
              margin: EdgeInsets.only(bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
        
                children: [
                  // first conatiner
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome, Sakshi!',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,  fontFamily: 'Poppins',),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Here is your activity today,',
                          style: TextStyle(color: Color(0xFF545252), fontSize: 15,  fontFamily: 'Poppins',),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
        
        
                  // second conatiner
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 80,
                              // Example height value
                              width: 145,
                              // Example width value
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
        
                              padding: const EdgeInsets.only(left: 10, top: 15),
                              // Adjust padding for inner content
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '89%',
                                    style: TextStyle(color: Color(0xFF7A3018),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  // Add spacing between Text widgets
                                  Text('Presence', style: TextStyle(fontSize: 13)),
                                ],
                              ),
                            ),
        
                            Container(
                              height: 80,
                              // Example height value
                              width: 145,
                              // Example width value
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.only(left: 10, top: 15),
                              child:
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '100%',
                                    style: TextStyle(color: Color(0xFF102F72),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  SizedBox(height: 5),
                                  // Add spacing between Text widgets
                                  Text('Completeness'),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20), // Add vertical spacing between rows
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 80,
                              // Example height value
                              width: 145,
                              // Example width value
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.only(left: 10, top: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('18', style: TextStyle(color: Colors.lightBlue,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),),
                                  SizedBox(height: 5),
                                  // Add spacing between Text widgets
                                  Text('Assignments', style: TextStyle(  fontFamily: 'Poppins',),),
                                ],
                              ),
                            ),
                            Container(
                              height: 80,
                              // Example height value
                              width: 145,
                              // Example width value
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.only(left: 10, top: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('12', style: TextStyle(
                                      color: Color(0xFFDE8706),
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),),
                                  SizedBox(height: 5),
                                  // Add spacing between Text widgets
                                  Text('Total Subjects'),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
        
                  // thired container
                  Container(
        
                      margin: EdgeInsets.only(top: 20),
                      color: Colors.white,
        
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
        
                          Row(
        
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
        
                              Container(
        
                                margin: EdgeInsets.only(
                                    left: 20, top: 10, bottom: 10),
        
                                child: Column(
        
                                  children: [
        
        
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(500),
                                      child: IconButton(
                                        icon: Image.asset(
                                          "assets/images/book.png",
                                          fit: BoxFit.cover,
                                        ),
                                        onPressed: () {
        
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: (context) => ExamMode())
                                          );
                                        },
                                      ),
                                    ),
        
                                    Text('Exam\nMode',
                                      style: TextStyle(fontSize: 15,  fontFamily: 'Poppins',))
                                  ],
                                ),
                              ),
        
                              Container(
        
                                margin: EdgeInsets.only(left: 20, bottom: 20),
        
                                child: Column(
        
                                  children: [
        
        
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(500),
                                      child: IconButton(
                                        icon: Image.asset(
                                          "assets/images/subj.png",
                                          fit: BoxFit.cover,
                                          height: 50,
                                          width: 50,
                                        ),
                                        onPressed: () {
        
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: (context) => Subject())
                                          );
                                        },
                                      ),
        
                                    ),
        
                                    Text('Subject', style: TextStyle(fontSize: 15),)
                                  ],
                                ),
                              ),
        
                              Container(
        
                                margin: EdgeInsets.only(
                                    left: 20, top: 20, bottom: 20),
        
                                child: Column(
        
                                  children: [


                                    Container(
                                      decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100)
                                     ),
                                     child: Image.asset(
                                          "assets/images/Look3.jpg",
                                          fit: BoxFit.cover,
                                          height: 50,
                                          width: 50,
                                    ),
                               //      onTap: () {
                               //       Navigator.push(
                               //      context,
                               // MaterialPageRoute(builder: (context) => AppLock()),
                               //        );
                               //       }
                                      ),

        
                                    Text('App\nLock', style: TextStyle(fontSize: 15,  fontFamily: 'Poppins',),)
                                  ],
                                ),
                              ),
        
        
                              Container(
        
                                margin: EdgeInsets.only(
                                    left: 20, top: 20, bottom: 20, right: 20),
        
                                child: Column(
        
                                  children: [
        
        
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(500),
                                      child: IconButton(
                                        icon: Image.asset(
                                          "assets/images/Mike1.png",
                                          fit: BoxFit.cover,
                                          height: 50,
                                          width: 50,
                                        ),
                                        onPressed: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: (context) => HomePage())
                                          );
                                        },
                                      ),
        
                                    ),
        
                                    Text('Deaf\nMode',
                                      style: TextStyle(fontSize: 15,  fontFamily: 'Poppins')),
                                  ],
                                ),
                              ),
        
        
                            ],
                          ),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Mentor(),
                            ),
                          );
                        },
                          child:
                          Container(
                            margin: EdgeInsets.only(top: 147 , left: 320),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Image.asset('assets/images/mentor.png' , height: 40 , width: 40,),
                                Text('Mentor' , style: TextStyle(  fontFamily: 'Poppins',),),

                              ],
                            ),
                          )
                      )

                        ],
                      )
                  ),
        
        
                ],
              ),
            ),

          ],
        ),
    ]
      ),
    );
  }

}