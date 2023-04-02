
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {


  @override
  void initState() {
    super.initState();
  
  }

  @override
  Widget build(BuildContext context) {
    
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black12,
              leading: const Icon(
                Icons.person_add_alt_1_outlined,
              ),
              actions: const [
                Icon(Icons.more_horiz),
              ],
              title: Text(
                'Imran Nur Tanha',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Column(
                                children: [
                                  Text(
                                    'Orders',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '12',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                color: Colors.black54,
                                width: 1,
                                height: 15,
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                ),
                              ),
                              const Column(
                                children: [
                                  Text(
                                    'Revenue',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '1200',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                color: Colors.black54,
                                width: 1,
                                height: 15,
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                ),
                              ),
                              const Column(
                                children: [
                                  Text(
                                    "Customer",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '15',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              
                            ],
                          ),
                          // const SizedBox(
                          //   height: 15,
                          // ),
                          
                          // const SizedBox(
                          //   height: 25,
                          // ),
                          Container(
                            child: Text('Recent Sales:',style: TextStyle(height: 20,fontWeight: FontWeight.bold),),
                          ),
                          Container(
                            child: Text('Best Selling Proiducts:',style: TextStyle(height: 20,fontWeight: FontWeight.bold),),
                          )
                          
                       
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        
  }
}
