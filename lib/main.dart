import 'package:flutter/material.dart';
import 'package:invoice_app/Screen/home_screen.dart';
import 'package:invoice_app/uttils//app_routes.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routes: screenroutes,
    ),
  );
}