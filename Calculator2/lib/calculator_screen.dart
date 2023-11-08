import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalScreen extends StatefulWidget {
  const CalScreen({super.key});

  @override
  State<CalScreen> createState() => _CalScreenState();
}

class _CalScreenState extends State<CalScreen> {
  List<String> btns = [
    'C',
    'Del',
    '%',
    '/',
    '9',
    '8',
    '7',
    '*',
    '6',
    '5',
    '4',
    '+',
    '3',
    '2',
    '1',
    '-',
    '.',
    '0',
    'Ans',
    '=',
  ];
  String input = '';
  String output = '';

  void _handleExpressionError() {
    if (input.isEmpty) {
      // Handle empty input
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please enter an expression."),
        ),
      );
      return;
    }

    try {
      Expression exp = Parser().parse(input);
      ContextModel cm = ContextModel();
      double result = exp.evaluate(EvaluationType.REAL, cm);

      if (result.isInfinite) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Division by zero is not allowed."),
          ),
        );
        return;
      }

      setState(() {
        output = result.toString();
      });
    } catch (e) {
      // Handle syntax error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Syntax Error: $e"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0, title: const Text('Calculator'), centerTitle: true),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.all(5),
              width: double.infinity,
              child: Text(
                input,
                textAlign: TextAlign.left,
                style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.all(5),
              width: double.infinity,
              child: Text(
                output,
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w400,
                    color: Colors.redAccent.shade100),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: GridView.builder(
              itemCount: btns.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4),
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () {
                    if (btns[i] == 'C') {
                      setState(() {
                        input = '';
                        output = '';
                      });
                    } else if (btns[i] == 'Del') {
                      setState(() {
                        input = input.substring(0, input.length - 1);
                      });
                    } else if (btns[i] == 'Ans') {
                      setState(() {
                        input = output;
                        output = '';
                      });
                    } else if (btns[i] == '%' ||
                        btns[i] == '/' ||
                        btns[i] == '*' ||
                        btns[i] == '+' ||
                        btns[i] == '-') {
                      if (input.endsWith("%") ||
                          input.endsWith("*") ||
                          input.endsWith("/") ||
                          input.endsWith("+") ||
                          input.endsWith("-")) {
                        //
                      } else {
                        setState(() {
                          input += btns[i];
                        });
                      }
                    } else if (btns[i] == '=') {
                      Expression exp = Parser().parse(input);
                      double result =
                          exp.evaluate(EvaluationType.REAL, ContextModel());
                      _handleExpressionError();
                      setState(() {
                        output = result.toString();
                      });

                      //output
                    } else {
                      setState(() {
                        input += btns[i];
                      });
                    }
                    //logic
                  },
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: myBackgroundColor(btns[i]),
                        borderRadius: BorderRadius.circular(20)),
                    alignment: Alignment.center,
                    child: Text(
                      btns[i],
                      style: TextStyle(
                        color: myTextColor(btns[i]),
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Color myBackgroundColor(String a) {
    if (a == 'C') {
      return Colors.greenAccent.shade400;
    } else if (a == 'Del') {
      return Colors.red;
    } else if (a == '%' ||
        a == '/' ||
        a == '+' ||
        a == '*' ||
        a == '-' ||
        a == '=') {
      return Colors.lightBlue;
    } else {
      return Colors.grey.shade300;
    }
  }

  Color myTextColor(String a) {
    if (a == 'C' ||
        a == '%' ||
        a == 'Del' ||
        a == '/' ||
        a == '+' ||
        a == '*' ||
        a == '-' ||
        a == '=') {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }
}
