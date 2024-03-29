import 'dart:async';

import 'package:flutter/material.dart';
import 'package:coverpage/Mentor.dart';
import 'package:coverpage/ExamMode.dart';
import 'package:coverpage/Subject.dart';
import 'package:coverpage/DeafMike.dart';

import 'FillScreen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  late Timer _timer;
  int _secondsRemaining = 150;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
  }

  void _startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_secondsRemaining == 0) {
          timer.cancel();
          // Add your logic when the timer reaches 0
        } else {
          setState(() {
            _secondsRemaining--;
          });
        }
      },
    );
  }

  void _stopTimer() {
    _timer.cancel();
    setState(() {
      _isPlaying = false;
    });
  }

  void _resetTimer() {
    _timer.cancel();
    setState(() {
      _isPlaying = false;
      _secondsRemaining = 150; // Reset to your desired initial time
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
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
                    // First container
                    Container(
                      margin: EdgeInsets.only(top: 80, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Sakshi',
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

                    // Second container
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 80,
                                width: 145,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '89%',
                                      style: TextStyle(color: Color(0xFF7A3018), fontSize: 17, fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Text('Presence', style: TextStyle(fontSize: 13)),
                                  ],
                                ),
                              ),

                              Container(
                                height: 80,
                                width: 145,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '100%',
                                      style: TextStyle(color: Color(0xFF102F72), fontWeight: FontWeight.bold, fontSize: 17),
                                    ),
                                    SizedBox(height: 5),
                                    Text('Completeness'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20), // Add vertical spacing between rows
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 80,
                                width: 145,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('18', style: TextStyle(color: Colors.lightBlue, fontSize: 17, fontWeight: FontWeight.bold)),
                                    SizedBox(height: 5),
                                    Text('Assignments'),
                                  ],
                                ),
                              ),
                              Container(
                                height: 80,
                                width: 145,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('12', style: TextStyle(color: Color(0xFFDE8706), fontSize: 17, fontWeight: FontWeight.bold)),
                                    SizedBox(height: 5),
                                    Text('Total Subjects'),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),

                    // Third container
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20, top: 10, bottom: 10),
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
                                    Text('Subject', style: TextStyle(fontSize: 15)),
                                  ],
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(500),
                                      child: IconButton(
                                        icon: Image.asset(
                                          "assets/images/Look3.jpg",
                                          fit: BoxFit.cover,
                                          height: 50,
                                          width: 50,
                                        ),
                                        onPressed: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: (context) => Fill())
                                          );
                                        },
                                      ),
                                    ),

                                    Text('App\nLock', style: TextStyle(fontSize: 15),),

                                  ],
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(left: 20, top: 20, bottom: 20, right: 20),
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
                                      style: TextStyle(fontSize: 15),)
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blue[100],
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)
                              ),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 55),
                            child: Column(
                              children: [
                                // Timer Text
                                Text(
                                  '${(_secondsRemaining ~/ 60).toString().padLeft(2, '0')}:${(_secondsRemaining % 60).toString().padLeft(2, '0')}',
                                  style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 10), // Add spacing between timer and icons
                                // Icons Row
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.play_arrow, color: Colors.white, size: 30),
                                      onPressed: () {
                                        setState(() {
                                          _isPlaying = true;
                                        });
                                        _startTimer();
                                      },
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.stop, color: Colors.white, size: 30),
                                      onPressed: () {
                                        _stopTimer();
                                      },
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.lock_reset_outlined, color: Colors.white, size: 30),
                                      onPressed: () {
                                        _resetTimer();
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
