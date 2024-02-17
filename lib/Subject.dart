import 'package:flutter/material.dart';
import 'package:coverpage/Assign.dart';


class Subject extends StatefulWidget {
  const Subject({Key? key}) : super(key: key);

  @override
  State<Subject> createState() => _SubjectState();
}

class _SubjectState extends State<Subject> {
  // Define and initialize assignments
  List<Assignment>? assignments = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
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
                SizedBox(width: 30),
                Text(
                  'Subjects',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 50),
                GestureDetector(
                  onTap: () {
                    // Add onTap functionality for your image here
                    print('Basil image tapped');
                  },
                  child: Image.asset(
                    'assets/images/basil.png',
                    height: 30,
                    width: 30,
                  ),
                ),
              ],
            ),
            SizedBox(height: 100),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildSubjectItem('assets/images/Math.png', 'Math', 'John Doe'),
                  buildSubjectItem('assets/images/phy.png', 'Physics', 'J.K.Thomas'),
                  buildSubjectItem('assets/images/art.png', 'Arts', 'A.K.Hook'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildSubjectItem('assets/images/Bio.png', 'Biology','John Doe'),
                  buildSubjectItem('assets/images/tech.png', 'Technology','J.K.Thomas'),
                  buildSubjectItem('assets/images/Eco.png', 'Economy','A.K.Hook'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildSubjectItem('assets/images/Eng.png', 'English', 'A.K.Hook'),
                  buildSubjectItem('assets/images/geo.png', 'Geography', 'J.K.Thomas'),
                  buildSubjectItem('assets/images/chem.png', 'Chemistry', 'John Doe'),
                ],
              ),
            ),

          ],
        ),

      ),
    );
  }

  Widget buildSubjectItem(String imagePath, String subjectName , String teacher) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SubjectPage(subjectName: subjectName, teacherName: teacher ),
          ),
        );
      },
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 60,
            width: 60,
          ),
          SizedBox(height: 15),
          Text(subjectName),
        ],
      ),
    );
  }
}
