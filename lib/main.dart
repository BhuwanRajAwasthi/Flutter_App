import 'package:flutter/material.dart';
import 'package:flutter_application_1/currencyconv_app.dart';

void main(){
  runApp( const MyApp());
}
//Types of Widgets
//1. StatelessWidgets
//2. StatefulWidgets
//
class MyApp extends StatelessWidget{
const MyApp({super.key});
@override
Widget build(BuildContext context){
  
  return MaterialApp(
    home: CurrencyconvApp(),
  );
  
}
}