import 'package:flutter/material.dart';
import 'package:flutx/themes/app_theme_notifier.dart';
import 'package:iqra/learning/views/full_app.dart';
import 'package:iqra/learning/views/subscription_screen.dart';
import 'package:iqra/quiz/quiz_customize_screen.dart';
import 'package:iqra/quiz/quiz_question_type1_screen.dart';
import 'package:iqra/theme/app_notifier.dart';
import 'package:iqra/view/pages/home_page.dart';
import 'package:iqra/view/pages/login_page.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(ChangeNotifierProvider<AppNotifier>(
    create: (context) => AppNotifier(),
    child: ChangeNotifierProvider<FxAppThemeNotifier>(
      create: (context) => FxAppThemeNotifier(),
      child: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home:  FullApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}