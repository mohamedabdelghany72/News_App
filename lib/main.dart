import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'layout/news_layout/news_app.dart';

void main(){

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(

      scaffoldBackgroundColor: Colors.white,
      appBarTheme:  const AppBarTheme(
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
        actionsIconTheme: IconThemeData(
          color: Colors.black
        ),
        backgroundColor: Colors.red ,
systemOverlayStyle: SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.light,
    statusBarColor: Colors.red)
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed
      )
    ),
    home: const NewsLayout(),
  );

  }
}
