import 'package:flutter/material.dart';
import 'package:iqra/view/pages/Dashboard_page.dart';

import 'package:iqra/view/pages/setting_page.dart';


import '../view/pages/quiz_page.dart';
import '../view/pages/welcome_screen.dart';

List pages = [
 WelcomeScreen(),
  
  
  DashboardScreen(),
  SettingsPage(),
];

// COLORS
const backgroundColor = Colors.grey;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

const kSecondaryColor = Color(0xFF8B94BC);
const kGreenColor = Color(0xFF6AC259);
const kRedColor = Color(0xFFE92E30);
const kGrayColor = Color(0xFFC1C1C1);
const kBlackColor = Color(0xFF101010);
const kPrimaryGradient = LinearGradient(
  colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const double kDefaultPadding = 20.0;


// FIREBASE

