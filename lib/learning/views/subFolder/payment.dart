import 'package:flutter/material.dart';


  Widget PaymentPage(BuildContext context) {
     String? name;
  String? rollNumber;
  double? amount;
    return  Padding(
      padding: EdgeInsets.all(20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Payment',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
                    SizedBox(height: 15,),
            TextField(
              decoration: InputDecoration(hintText: "Enter your name"),
              onChanged: (value) {
               // setState(() {
                  name = value;
               // });
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: "Enter your roll number"),
              onChanged: (value) {
               // setState(() {
                  rollNumber = value;
                //});
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: "Enter the amount to be paid"),
              onChanged: (value) {
                //setState(() {
                  amount = double.parse(value);
               // });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: null, child: Text('Pay Now',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.green)))
          ],
        ),
    );
    
  }

