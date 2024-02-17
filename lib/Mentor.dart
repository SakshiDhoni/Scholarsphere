import 'package:flutter/material.dart';

class Mentor extends StatefulWidget {
  const Mentor({Key? key}) : super(key: key);

  @override
  State<Mentor> createState() => _Mentor();
}

class _Mentor extends State<Mentor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 70),
        child: Column(
          children: [
            Text(
              'Contact Mentor',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 100),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8), // Margin between ListTiles
              child: ListTile(
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/Eng.png'),
                    ),
                    SizedBox(width: 14),
                    Text('English Mentor'),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8), // Margin between ListTiles
              child: ListTile(
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/Math.png'),
                    ),
                    SizedBox(width: 14),
                    Text('Maths Mentor'),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8), // Margin between ListTiles
              child: ListTile(
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/phy.png'),
                    ),
                    SizedBox(width: 14),
                    Text('Physics Mentor'),
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
