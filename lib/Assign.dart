import 'package:flutter/material.dart';


class Assignment {
  final String name;
  final String dueDate;

  Assignment({required this.name, required this.dueDate});
}

class SubjectCard extends StatelessWidget {
  final String subjectName;
  final String teacherName;
  final List<Assignment> assignments;

  SubjectCard({
    required this.subjectName,
    required this.teacherName,
    required this.assignments,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      subjectName,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Teacher: $teacherName',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 8.0),
                    for (var assignment in assignments)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                assignment.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              'Due: ${assignment.dueDate}',
                              style: TextStyle(
                                color: Colors.grey[600],
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
        ),
      ),
    );
  }
}

class SubjectPage extends StatelessWidget {

  final String subjectName;
  final String teacherName;


  SubjectPage({required this.subjectName,
    required this.teacherName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child:
        Container(
          margin: EdgeInsets.only(top:80, left: 20 , right: 20 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SubjectCard(
                subjectName: subjectName,
                teacherName: teacherName,
                assignments: [
                  Assignment(name: 'Homework 1', dueDate: 'Feb 20'),
                  Assignment(name: 'Quiz 1', dueDate: 'Feb 25'),
                  Assignment(name: 'Project', dueDate: 'Mar 5'),
                ],
              ),

              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Assignments',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        ListTile(
                          title: Text('Assignment 1'),
                          subtitle: Text('Due: Feb 29'),
                          trailing: ElevatedButton(
                            onPressed: () {
                              // Add your upload action here
                            },
                            child: Text('Upload'),
                          ),
                        ),
                        ListTile(
                          title: Text('Assignment 2'),
                          subtitle: Text('Due: Feb 15'),
                          trailing: ElevatedButton(

                            onPressed: null,

                            child: Text('Uploaded'),
                          ),
                        ),
                        ListTile(
                          title: Text('Assignment 3'),
                          subtitle: Text('Due: Feb 10'),
                          trailing: ElevatedButton(

                            onPressed: null,

                            child: Text('Uploaded'),
                          ),
                        ),
                        // Add more ListTile widgets for other assignments
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),

              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Quiz',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        ListTile(
                          title: Text('Quiz 1'),
                          subtitle: Text('End: 11:59 ,  Feb 25 '),
                          trailing: ElevatedButton(
                            onPressed: () {
                              // Add your upload action here
                            },
                            child: Text('Start'),
                          ),
                        ),
                        ListTile(
                          title: Text('Quiz 2'),
                          subtitle: Text('End: 11:59 , Feb 15'),
                          trailing: ElevatedButton(

                            onPressed: null,

                            child: Text('Ended'),
                          ),
                        ),
                        ListTile(
                          title: Text('Quiz 3'),
                          subtitle: Text('End:11:59 ,  Feb 10 '),
                          trailing: ElevatedButton(

                            onPressed: null,

                            child: Text('Ended'),
                          ),
                        ),
                        // Add more ListTile widgets for other assignments
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),

              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Project',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        ListTile(
                          title: Text('Project 1'),
                          subtitle: Text('Last Date :  Mar 5 '),
                          trailing: ElevatedButton(
                            onPressed: () {
                              // Add your upload action here
                            },
                            child: Text('Submit'),
                          ),
                        ),
                        ListTile(
                          title: Text('Project 2'),
                          subtitle: Text('Last Date: Feb 15'),
                          trailing: ElevatedButton(

                            onPressed: null,

                            child: Text('Submitted'),
                          ),
                        ),

                        // Add more ListTile widgets for other assignments
                      ],
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