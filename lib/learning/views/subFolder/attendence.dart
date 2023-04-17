import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';

Widget Attendance(BuildContext context) {
  String _selectedSection = 'Attendence';
  List<Image> images = [
    Image.asset('assets/other/student.png'),
  ];
  
  List name = [
    'Rafiq',
    'Roton',
    'Riad',
    'Nur',
    'Imran',
    'Shafik',
    'Sharif',
    'Rizu',
    'Rimu',
    'Riya'
  ];

  CalendarController _calendarController = CalendarController();
  bool _isChecked = false;
  List<bool> _isCheckedList = List.generate(10, (_) => false);

    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 525),
      child: Column(
        children: [
          Container(
                          height: 250,
                          child: SingleChildScrollView(
                            child: TableCalendar(
                              //calendarController: _calendarController,
                              startingDayOfWeek: StartingDayOfWeek.sunday,
                              availableGestures: AvailableGestures.all,
                              locale: 'en_US',
                              headerStyle: HeaderStyle(
                                formatButtonTextStyle: TextStyle()
                                    .copyWith(color: Colors.white, fontSize: 15.0),
                                formatButtonDecoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              calendarStyle: CalendarStyle(),
                              onDaySelected: (date, events) {
                                //print('Selected date: $date');
                              },
                              firstDay: DateTime.now(),
                              focusedDay: DateTime.now(),
                              lastDay: DateTime.now(),
                              weekendDays: [DateTime.saturday, DateTime.friday],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                            child: Center(
                                child: Text('Attendance:',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)))),
                        Container(
                          child: Expanded(
                            flex: 4,
                            child: ListView.builder(
                              itemCount: 10,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: [
                                    ListTile(
                                      trailing: Checkbox(
                                        value: _isCheckedList[index],
                                        onChanged: (bool? value) {
                                          // setState(() {
                                            _isCheckedList[index] = value!;
                                          // });
                                        },
                                      ),
                                      title: Text(name[index]),
                                      leading: images[0],
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('ID: 12${index + 1}',style: TextStyle(fontWeight: FontWeight.bold),),
                                          Text('Attendace: 4 out of 10')
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    index == 9
                                        ? Container(
                                            child: TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Submit",
                                                  style: TextStyle(
                                                    color: Colors.amber,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                  ),
                                                )),
                                          )
                                        : Text(''),
                                        SizedBox(height: 10,),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
    
        ],
      ),
    );
  }