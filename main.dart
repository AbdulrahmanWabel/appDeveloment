import 'package:fifth_practice/buttons.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String equation = '';
  String calculation = '';

  final List<String> buttons = [
    'C',
    'DEL',
    '%',
    '/',
    '9',
    '8',
    '7',
    '*',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      equation,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.centerRight,
                    child: Text(
                      calculation,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
                child: GridView.builder(
                    itemCount: buttons.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4),
                    itemBuilder: (BuildContext context, int index) {
                      if (index == 0){
                        return Buttons(
                          buttonTapped: () {
                            setState(() {
                              equation = '';
                            });},
                            color: Colors.green,
                            textColor: Colors.white,
                            buttonText: buttons[index]);}
                      else if (index == 1){
                        return Buttons(
                            buttonTapped: () {
                              setState(() {
                                equation = equation.substring(0, equation.length-1);
                              });},
                            color: Colors.red,
                            textColor: Colors.white,
                            buttonText: buttons[index]);}
                      else if (index == buttons.length-1){
                        return Buttons(
                            buttonTapped: () {
                              setState(() {
                                equalPressed();
                              });},
                            color: Colors.blue[900],
                            textColor: Colors.white,
                            buttonText: buttons[index]);}
                      else {
                        return Buttons(
                            buttonTapped: () {
                              setState(() {
                                equation += buttons[index];
                              });},
                            color: isOperator(buttons[index])
                                ? Colors.cyan
                                : Colors.cyan[50],
                            textColor: isOperator(buttons[index])
                                ? Colors.white
                                : Colors.cyan,
                            buttonText: buttons[index]);}
                    })),
          ),
        ],
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '%' || x == '/' || x == '*' || x == '-' || x == '+' || x == '=')
      return true;

    return false;
  }

  void equalPressed() {
    String Answer = equation;

    Parser p = Parser();
    Expression exp = p.parse(Answer);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    calculation = eval.toString();
  }
}



