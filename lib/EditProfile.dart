import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfile();
}

class _EditProfile extends State<EditProfile> {
  Gender? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
         Container(
          margin: EdgeInsets.only(top: 10, bottom: 30, left: 5, right: 20),
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
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
                  SizedBox(width: 20),
                  Text(
                    'Profile',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Center(child: Image.asset('assets/images/Photo Profil.png', height: 100, width: 100)),
              Container(
                margin: EdgeInsets.only(left: 30, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name', style: TextStyle(fontSize: 18)),
                    buildTextField('Enter Name Here'),
                    SizedBox(height: 15),
                    Text('Email', style: TextStyle(fontSize: 18)),
                    buildTextField('Enter Email Here'),
                    SizedBox(height: 15),
                    Text('Date of Birth', style: TextStyle(fontSize: 18)),
                    buildTextField(''),
                    SizedBox(height: 15),
                    Text('Phone Number', style: TextStyle(fontSize: 18)),
                    buildTextField('+91 -xxxxx xxxxx'),
                    SizedBox(height: 15),
                    Text('Gender', style: TextStyle(fontSize: 18)),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 30, top: 8 ),
                          height: 45,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: Color(0xFFCEE0EE)),
                            color: Color(0xFFEFF3F6),
                          ),
                          child: Row(
                            children: [
                              Radio<Gender>(
                                value: Gender.male,
                                groupValue: _selectedGender,
                                onChanged: (Gender? value) {
                                  setState(() {
                                    _selectedGender = value;
                                  });
                                },
                              ),

                              Text('Male'),

                              SizedBox(width: 15,)
                            ],
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(right: 30, top: 8 ),
                          height: 45,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: Color(0xFFCEE0EE)),
                            color: Color(0xFFEFF3F6),
                          ),
                          child: Row(
                            children: [
                              Radio<Gender>(

                                value: Gender.female,
                                groupValue: _selectedGender,
                                onChanged: (Gender? value) {
                                  setState(() {
                                    _selectedGender = value;
                                  });
                                },
                              ),

                        Text('Female'),
                        SizedBox(width: 15,),
                            ],
                          ),
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
    );
  }

  Widget buildTextField(String hintText) {
    return Container(
      margin: EdgeInsets.only(right: 30, top: 8),
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Color(0xFFCEE0EE)),
        color: Color(0xFFEFF3F6),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 10, bottom: 12, left: 20),
          hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}

enum Gender { male, female }

void main() {
  runApp(MaterialApp(
    home: EditProfile(),
  ));
}
