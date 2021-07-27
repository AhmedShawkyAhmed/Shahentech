// @dart=2.9
import 'package:flutter/material.dart';
import 'package:shahen/stateful/rate.dart';
import 'package:sizer/sizer.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Page 15',
            home: DriverRate(),
          );
        }
    );
  }
}
