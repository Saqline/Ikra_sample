import 'package:flutter/material.dart';

class Notice {
  final String title;
  final String date;
  final String description;

  Notice({required this.title, required this.date, required this.description});
}

Widget NoticeBoard(BuildContext context) {
  
  List<Notice> notices = [
    Notice(
      title: "Examination Schedule",
      date: "10/05/2023",
      description: "The examination will be conducted from 20/04/2023 to 30/04/2023.",
    ),
    Notice(
      title: "Holiday Announcement",
      date: "05/05/2023",
      description: "The college will remain closed on 14/04/2023 on the occasion of Ambedkar Jayanti.",
    ),
    Notice(
      title: "Admission Open",
      date: "01/05/2023",
      description: "Admission for the new academic session is open. Please contact the college office for details.",
    ),
  ];
  return Container(
    child: Expanded(
      child: ListView.builder(
            itemCount: notices.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    if(index==0)Text('NoticeBoard',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
                    SizedBox(height: 15,),
                    Card(
                      child: ListTile(
                        title: Text(notices[index].title),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(notices[index].date),
                            SizedBox(height: 10),
                            Text(notices[index].description),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          
        ),
    ),
  );
}
