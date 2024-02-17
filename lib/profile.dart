
import 'package:flutter/material.dart';
import 'package:coverpage/EditProfile.dart';

import 'MainDashBoard.dart';


class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profile();
}

class _profile extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       body:

        Container(

            margin: EdgeInsets.only(top:40),

            child:  Column(
              children: [
                Row(
                  children: <Widget>[
    //             IconButton(
    //             icon: const Icon(
    //               Icons.arrow_back_sharp,
    //               semanticLabel: 'back',
    //             ),
    //             onPressed: () {
    // print('Back Button');
    // // Navigator.push(
    // //     context,
    // //     MaterialPageRoute(builder: (context) => Dashboard()),
    //
    // }
            IconButton(
              icon: const Icon(
              Icons.arrow_back_sharp,
              semanticLabel: 'back',
            ),
          onPressed: () {
            print('Back Button');
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainDashBoard()),
            );
          },
        ),


                    SizedBox(width: 10,),

                    Text('ScholarSphere',  style: TextStyle(fontSize :20)),
                    ]
                          ),
                SizedBox(height: 30),
                ListTile(
                  leading: Image.asset('assets/images/person.png'),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        'Name',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 50),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EditProfile()),
                      );
                    },
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/editproifle .png'),
                        ),
                        SizedBox(width: 14),
                        Text('Edit Profile'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );

  }
}