import 'package:flutter/material.dart';
import 'package:iqra/learning/views/subFolder/admit_card.dart';
import 'package:iqra/learning/views/subFolder/attendence.dart';
import 'package:iqra/learning/views/subFolder/grade.dart';
import 'package:iqra/learning/views/subFolder/noticeboard.dart';
import 'package:iqra/learning/views/subFolder/payment.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  String _selectedDrawer = 'School';
  String _selectedSection = 'Attendence';
  

  Map<String, List<String>> _drawerSections = {
    'School': [
      'Grade',
      'Admit Card',
      'Noticeboard',
      'Online Payment',
      'Attendence'
    ],
    'Madrasa': ['Cadet Madrasa', 'Employee Enrollment', 'Room', 'Noticeboard'],
    'Ikra': ['Subject', 'Employee ', 'Enrollment', 'Noticeboard'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text('Dashboard Screen'),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Center(
                  child: DropdownButton<String>(
                    value: _selectedDrawer,
                    onChanged: (value) {
                      setState(() {
                        _selectedDrawer = value!;
                        _selectedSection = _drawerSections[_selectedDrawer]![0];
                      });
                    },
                    items: _drawerSections.keys
                        .map<DropdownMenuItem<String>>(
                          (String value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              DropdownButton<String>(
                value: _selectedSection,
                onChanged: (value) {
                  setState(() {
                    _selectedSection = value!;
                  });
                },
                items: _drawerSections[_selectedDrawer]!
                    .map<DropdownMenuItem<String>>(
                      (String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            if (_selectedDrawer == 'School' && _selectedSection == 'Attendence')
              Attendance(context),
            if (_selectedDrawer == 'School' &&
                  _selectedSection == 'Admit Card')
              AdmitCard(context),
            if (_selectedDrawer == 'School' && _selectedSection == 'Noticeboard')
              NoticeBoard(context),
             if (_selectedDrawer == 'School' && _selectedSection == 'Online Payment')
              PaymentPage(context),
            if (_selectedDrawer == 'School' && _selectedSection == 'Grade')
              grade(context),
          ],
        ));
  }

  
}
