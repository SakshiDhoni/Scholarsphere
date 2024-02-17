import 'package:flutter/material.dart';
import 'package:coverpage/verification.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController countrycode = TextEditingController();
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    countrycode.text = "+91";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40, bottom: 25),
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
                      print('Back Button');
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 20),
                  Center(
                    child: Text(
                      "Sign up/ Sign in",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50), // Add some spacing
              Text(
                "Phone Number",
                style: TextStyle(color: Colors.black, fontSize: 18,  fontFamily: 'Poppins',),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: countrycode,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    Text(
                      "|",
                      style: TextStyle(fontSize: 33, color: Colors.grey),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Phone No.",
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 45,
                width: 200,
                child: ElevatedButton(
                  onPressed: isChecked
                      ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyOtp()),
                    );
                  }
                      : null,
                  child: Text('Sign Up', style:TextStyle(color: Color(0xFF034C85),  fontFamily: 'Poppins',)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        return isChecked ? Colors.lightBlueAccent : Color(0xFFC1E2F1);
                      },
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 100), // Add some spacing
              Row(
                children: [
                  CheckboxWidget(
                    isChecked: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value ?? false;
                      });
                    },
                  ),
                  Flexible(
                    child: Text(
                      'I agree with the terms and conditions and\n also the protection of my personal data \n on this application',
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ), // Add CheckboxWidget here
            ],
          ),
        ),
      ),
    );
  }
}

class CheckboxWidget extends StatelessWidget {
  final bool isChecked;
  final ValueChanged<bool?>? onChanged;

  const CheckboxWidget({
    required this.isChecked,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: onChanged,
    );
  }
}
