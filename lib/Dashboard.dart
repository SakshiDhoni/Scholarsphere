import 'package:flutter/material.dart';
import 'package:coverpage/ExamMode.dart';
import 'package:coverpage/Subject.dart';
import 'package:coverpage/AppLock.dart';
import 'package:coverpage/DeafMike.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
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
                          'Hi, Student',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Here is your activity today,',
                          style: TextStyle(color: Color(0xFF545252), fontSize: 15),
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
                                  Text('Assignments'),
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
                                      style: TextStyle(fontSize: 15),)
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
                                          "assets/images/look2.png",
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

        
                                    Text('App\nLock', style: TextStyle(fontSize: 15),)
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
                                          "assets/images/mike.png",
                                          fit: BoxFit.cover,
                                          height: 50,
                                          width: 50,
                                        ),
                                        onPressed: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: (context) => DeafMike())
                                          );
                                        },
                                      ),
        
                                    ),
        
                                    Text('Deaf\nMode',
                                      style: TextStyle(fontSize: 15),)
                                  ],
                                ),
                              ),
        
        
                            ],
                          ),

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