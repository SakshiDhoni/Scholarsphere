import 'dart:async';
import 'package:flutter/material.dart';

class Fill extends StatelessWidget {
  const Fill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to another page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TaskPage()),
            );
          },
          child: Text('Start Task'),
        ),
      ),
    );
  }
}

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  late Timer _timer;
  int _remainingTime = 60; // 10 minutes in seconds

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingTime > 0) {
        setState(() {
          _remainingTime--;
        });
      } else {
        _timer.cancel(); // Cancel the timer when it reaches 0
        Navigator.pop(context); // Allow navigation back
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    int minutes = _remainingTime ~/ 60;
    int seconds = _remainingTime % 60;

    return WillPopScope(
      onWillPop: () async => false, // Intercept back button press
      child: Scaffold(
        appBar: AppBar(
          title: Text('Task Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Task in Progress...',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text(
                '$minutes:${seconds.toString().padLeft(2, '0')} remaining',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer to avoid memory leaks
    super.dispose();
  }
}
