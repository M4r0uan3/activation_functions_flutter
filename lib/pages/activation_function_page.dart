// activation_function_page.dart

import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import '../widgets/drawer_widget.dart';


class ActivationFunctionPage extends StatefulWidget {
  final String functionName;

  ActivationFunctionPage(this.functionName);

  @override
  _ActivationFunctionPageState createState() => _ActivationFunctionPageState();
}

class _ActivationFunctionPageState extends State<ActivationFunctionPage> {
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.functionName),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   widget.functionName,
            //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            // ),
            Image.asset("assets/${widget.functionName.toLowerCase()}.png"),
            SizedBox(height: 20),
            // Text('Selected Value: $selectedValue'),
            SizedBox(height: 10),
            NumberPicker(
              value: selectedValue, // Use the selectedValue instead of a fixed value
              minValue: -100,
              maxValue: 100,
              onChanged: (value) {
                setState(() {
                  selectedValue = value;
                });
              },
              axis: Axis.horizontal,
            ),
            SizedBox(height: 20),
            Text('${calculateActivationFunction(widget.functionName, selectedValue.toDouble())}'),
          ],
        ),
      ),
    );
  }

  double calculateActivationFunction(String functionName, double value) {
    double result = 0.0;

    // Implement activation function calculations
    if (functionName == 'Relu') {
      // Rectified Linear Unit (ReLU)
      result = value > 0 ? value : 0;
    } else if (functionName == 'Tanh') {
      // Hyperbolic Tangent (Tanh)
      result = (2 / (1 + (1 / (value + 1)))) - 1;
    } else if (functionName == 'Sigmoid') {
      // Sigmoid function
      result = 1 / (1 + (1 / (value + 1)));
    }

    return result;
  }
}
