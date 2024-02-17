import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  State<Schedule> createState() => _Schedule();
}

class _Schedule extends State<Schedule> {
  late CalendarFormat _calendarFormat;
  late DateTime _focusedDay;
  late DateTime _selectedDay;

  @override
  void initState() {
    super.initState();
    _calendarFormat = CalendarFormat.month;
    _focusedDay = DateTime.now();
    _selectedDay = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 70, left: 20),
            child: Row(
              children: [
                Text(
                  'All Assignments',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(width: 140),
                Image.asset(
                  'assets/images/Menu.png',
                  height: 60,
                  width: 60,
                ),
              ],
            ),
          ),
          TableCalendar(
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: 5, // Change this to the actual number of assignments
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Assignment ${index + 1}'),
                  subtitle: Text('Due Date: ${_selectedDay.toString()}'), // Display the selected date as due date for each assignment
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
