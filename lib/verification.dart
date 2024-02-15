import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:coverpage/Login_profile.dart';

class MyOtp extends StatefulWidget {
  const MyOtp({Key? key});

  @override
  State<MyOtp> createState() => _MyOtpState();
}

class _MyOtpState extends State<MyOtp> {
  bool codeResent = false;
  int _start = 10;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            codeResent = false;
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  void resetTimer() {
    setState(() {
      _start = 10;
      codeResent = true;
    });
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(114, 178, 238, 1), fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      shape: BoxShape.circle,
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
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
                margin: EdgeInsets.only(top: 100, bottom: 100),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Verification Code",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Enter the code sent by SMS to verify your phone number",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                    Pinput(
                      length: 4,
                      defaultPinTheme: defaultPinTheme,
                      focusedPinTheme: focusedPinTheme,
                      submittedPinTheme: submittedPinTheme,
                      showCursor: true,
                      onCompleted: (pin) => print(pin),
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      height: 45,
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login_Profile()),
                          );
                        },
                        child: Text(
                          'Verify',
                          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    codeResent
                        ? Text(
                      '$_start seconds remaining',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
                    )
                        : ElevatedButton(
                      onPressed: () {
                        resetTimer();
                      },
                      child: Text(
                        'Resend Code',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
