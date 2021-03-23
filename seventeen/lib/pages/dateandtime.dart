import 'package:flutter/material.dart';

class DateAndTimePrac extends StatefulWidget {
  @override
  _DateAndTimePracState createState() => _DateAndTimePracState();
}

class _DateAndTimePracState extends State<DateAndTimePrac> {
  DateTime _dateTime;
  Future getDate() async {
    DateTime date = await showDatePicker(
        context: context,
        initialDate: DateTime(DateTime.now().year),
        firstDate: DateTime(DateTime.now().year - 50),
        lastDate: DateTime(DateTime.now().year + 50));

    setState(() {
      _dateTime = date;
    });
  }

  TimeOfDay _timeOfDay;
  Future getTime() async {
    TimeOfDay time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    setState(() {
      _timeOfDay = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _timeOfDay == null
                ? Text('Select a time')
                : Text(
                    '${_timeOfDay.hour}:${_timeOfDay.minute} ${_timeOfDay.hourOfPeriod}'),
            ElevatedButton(
                onPressed: () {
                  getTime();
                },
                child: Text('Pick time')),
            _dateTime == null
                ? Text('Select a date')
                : Text('${_dateTime.day}.${_dateTime.month}.${_dateTime.year}'),
            ElevatedButton(
                onPressed: () {
                  getDate();
                },
                child: Text('Pick date'))
          ],
        ),
      ),
    );
  }
}
