 import 'package:flutter/material.dart';
import 'package:learning/presentation/resources/routes_manager.dart';
import 'package:learning/presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  // const MyApp({ Key key }) : super(key: key); // default constructor
 
   MyApp._internal(); //private named constructor
   int appState =0;

   static final MyApp instance = MyApp._internal(); // single instance
 
   factory MyApp() => instance; // factory for the class

   @override
   State<MyApp> createState() => _MyAppState();
 }
 
 class _MyAppState extends State<MyApp> {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
       
     );
   }
 }