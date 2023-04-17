import 'package:flutter/material.dart';

class EmployeeEnrollment extends StatefulWidget {
  @override
  _EmployeeEnrollmentState createState() => _EmployeeEnrollmentState();
}

class _EmployeeEnrollmentState extends State<EmployeeEnrollment> {
  // Define variables for employee details
  final _formKey = GlobalKey<FormState>();
  String? _name;
  String? _email;
  String? _phoneNumber;

  // Method to submit the employee details
  void _submit() {
    final form = _formKey.currentState;
    if (form!.validate()) {
      form.save();
      // TODO: Add code to submit the employee details to the server or database
      print("Name: $_name, Email: $_email, Phone Number: $_phoneNumber");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee Enrollment"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Name",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your name";
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Email",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your email";
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Phone Number",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your phone number";
                  }
                  return null;
                },
                onSaved: (value) {
                  _phoneNumber = value;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: _submit,
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
