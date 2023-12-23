import 'package:contol_app/pages/activation_function_page.dart';
import 'package:contol_app/pages/home_page.dart';
import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/":(context)=>HomePage(),
        "Relu":(context)=>ActivationFunctionPage('Relu'),
        "Sigmoid":(context)=>ActivationFunctionPage('Sigmoid'),
        "Tanh":(context)=>ActivationFunctionPage('Tanh'),
      },
    );
  }
}
