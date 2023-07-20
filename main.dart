import 'package:flutter/material.dart';
import 'package:third_practice/pages/home.dart';
import 'package:third_practice/pages/location.dart';
import 'package:third_practice/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}