import 'package:flutter/widgets.dart';
import 'package:invoice_app/Screen/home_screen.dart';
import 'package:invoice_app/screen/invoice_genrator.dart';
Map<String, WidgetBuilder> screenroutes = {
  '/' : (context) => HomeScreen(),
  'invoice' :(context) => Invoicegenrator(),
};