import 'package:flutter/material.dart';

class DashoboardScreen extends StatefulWidget {
  DashoboardScreen({Key? key}) : super(key: key);

  @override
  _DashoboardScreenState createState() => _DashoboardScreenState();
}

enum Section {
  school,
  cadetMadrasa,
  ikraInstitute,
}

enum SchoolSubSection {
  grade,
  admitCard,
  studentLedger,
  onlinePayment,
}

enum CadetMadrasaSubSection {
  employeeEnrollment,
  room,
  noticeboard,
}

enum IkraInstituteSubSection {
  employeeEnrollment,
  room,
  noticeboard,
}

class _DashoboardScreenState extends State<DashoboardScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Section _currentSection = Section.school;
  SchoolSubSection _currentSchoolSubSection = SchoolSubSection.grade;
  CadetMadrasaSubSection _currentCadetMadrasaSubSection =
      CadetMadrasaSubSection.employeeEnrollment;
  IkraInstituteSubSection _currentIkraInstituteSubSection =
      IkraInstituteSubSection.employeeEnrollment;

  Widget _buildSchoolSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text('Grade'),
          onTap: () {
            setState(() {
              _currentSchoolSubSection = SchoolSubSection.grade;
            });
            Navigator.pop(context);
            // TODO: Add Grade page logic here
          },
        ),
        ListTile(
          title: Text('Admit Card'),
          onTap: () {
            setState(() {
              _currentSchoolSubSection = SchoolSubSection.admitCard;
            });
            Navigator.pop(context);
            // TODO: Add Admit Card page logic here
          },
        ),
        ListTile(
          title: Text('Student Ledger'),
          onTap: () {
            setState(() {
              _currentSchoolSubSection = SchoolSubSection.studentLedger;
            });
            Navigator.pop(context);
            // TODO: Add Student Ledger page logic here
          },
        ),
        ListTile(
          title: Text('Online Payment'),
          onTap: () {
            setState(() {
              _currentSchoolSubSection = SchoolSubSection.onlinePayment;
            });
            Navigator.pop(context);
            // TODO: Add Online Payment page logic here
          },
        ),
      ],
    );
  }

  Widget _buildCadetMadrasaSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text('Employee Enrollment'),
          onTap: () {
            setState(() {
              _currentCadetMadrasaSubSection =
                  CadetMadrasaSubSection.employeeEnrollment;
            });
            Navigator.pop(context);
            // TODO: Add Employee Enrollment page logic here
          },
        ),
        ListTile(
          title: Text('Room'),
          onTap: () {
            setState(() {
              _currentCadetMadrasaSubSection = CadetMadrasaSubSection.room;
            });
            Navigator.pop(context);
            // TODO: Add Room page logic here
          },
        ),
        ListTile(
          title: Text('Noticeboard'),
          onTap: () {
            setState(() {
              _currentCadetMadrasaSubSection =
                  CadetMadrasaSubSection.noticeboard;
            });
            Navigator.pop(context);
            // TODO: Add Noticeboard page logic here
          },
        ),
      ],
    );
  }

  Widget _buildIkraInstituteSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text('Employee Enrollment'),
          onTap: () {
            setState(() {
              _currentIkraInstituteSubSection =
                  IkraInstituteSubSection.employeeEnrollment;
            });
            Navigator.pop(context);
            // TODO: Add Employee Enrollment page logic here
          },
        ),
        ListTile(
          title: Text('Room'),
          onTap: () {
            setState(() {
              _currentIkraInstituteSubSection = IkraInstituteSubSection.room;
            });
            Navigator.pop(context);
            // TODO: Add Room page logic here
          },
        ),
        ListTile(
          title: Text('Noticeboard'),
          onTap: () {
            setState(() {
              _currentIkraInstituteSubSection =
                  IkraInstituteSubSection.noticeboard;
            });
            Navigator.pop(context);
            // TODO: Add Noticeboard page logic here
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('My App'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('School'),
              trailing: Icon(Icons.arrow_drop_down),
              onTap: () {
                setState(() {
                  _currentSection = Section.school;
                });
              },
            ),
            if (_currentSection == Section.school) _buildSchoolSection(),
            ListTile(
              title: Text('Cadet Madrasa'),
              trailing: Icon(Icons.arrow_drop_down),
              onTap: () {
                setState(() {
                  _currentSection = Section.cadetMadrasa;
                });
              },
            ),
            if (_currentSection == Section.cadetMadrasa)
              _buildCadetMadrasaSection(),
            ListTile(
              title: Text('Ikra Institute'),
              trailing: Icon(Icons.arrow_drop_down),
              onTap: () {
                setState(() {
                  _currentSection = Section.ikraInstitute;
                });
              },
            ),
            if (_currentSection == Section.ikraInstitute)
              _buildIkraInstituteSection(),
          ],
        ),
      ),
      body: Center(
        child: Text(
          _getCurrentSubSectionTitle(),
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }

  String _getCurrentSubSectionTitle() {
    switch (_currentSection) {
      case Section.school:
        switch (_currentSchoolSubSection) {
          case SchoolSubSection.grade:
            return 'Grade';
          case SchoolSubSection.admitCard:
            return 'Admit Card';
          case SchoolSubSection.studentLedger:
            return 'Student Ledger';
          case SchoolSubSection.onlinePayment:
            return 'Online Payment';
        }
      case Section.cadetMadrasa:
        switch (_currentCadetMadrasaSubSection) {
          case CadetMadrasaSubSection.employeeEnrollment:
            return 'Employee Enrollment';
          case CadetMadrasaSubSection.room:
            return 'Room';
          case CadetMadrasaSubSection.noticeboard:
            return 'Noticeboard';
        }
      case Section.ikraInstitute:
        switch (_currentIkraInstituteSubSection) {
          case IkraInstituteSubSection.employeeEnrollment:
            return 'Employee Enrollment';
          case IkraInstituteSubSection.room:
            return 'Room';
          case IkraInstituteSubSection.noticeboard:
            return 'Noticeboard';
        }
    }
    //return '';
  }
}

