import 'package:flutter/material.dart';
import 'package:message/screen/home_page.dart';
import 'package:message/screen/message_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.white54,
        iconTheme: IconThemeData(color: Colors.grey),
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
        toolbarTextStyle: TextStyle(color: Colors.black),
      )),
      title: 'Messenger clone',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        MessagePage.routeName: (context) => const MessagePage()
      },
    );
  }
}
