import 'package:flutter/material.dart';

Widget AdmitCard(BuildContext context) {
  String name = "Imran Nur";
  String rollNumber = "12345";
  String examCenter = "ABC School";

  return Column(

    children: [
      Center(
        child:Text('Admit Card',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.grey)) ,
      ),
      SizedBox(height: 20),
      Center(
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("assets/other/student.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      SizedBox(height: 20),
      Center(
          child: Text("Name: $name",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.grey))),
      SizedBox(height: 10),
      Center(
          child: Text("Roll Number: $rollNumber",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.grey))),
      SizedBox(height: 10),
      Center(
          child: Text("Exam Center: $examCenter",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.grey))),
      SizedBox(height: 10),
      Center(child: ElevatedButton(onPressed: null, child: Text('Download',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.green))))
    ],
  );
}
