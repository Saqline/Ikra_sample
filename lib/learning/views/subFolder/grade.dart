import 'package:flutter/material.dart';

Widget grade(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      
      SizedBox(height: 150,),
      Text('Grade:',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
                    SizedBox(height: 15,),
      Center(child:Text('Your Grade is GPA : 5',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.green),)),
    ],
  );
}
