// import 'package:camera/camera.dart';
import 'package:averagemode/constants.dart';
import 'package:averagemode/register.dart';
import 'package:averagemode/userListPage.dart';
import 'package:flutter/material.dart';
// import 'package:kronos/constants.dart';
// import 'package:kronos/register.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Roboto",
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: secondaryColor,
    accentColor: primaryColor,
    errorColor: dangerColor,
  );
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kronos',
      theme: theme(),
      debugShowCheckedModeBanner: false,
      home: const usersListPage(),
    );
  }
}
