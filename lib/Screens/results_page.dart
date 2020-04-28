import 'package:bmi_calculator/Constants.dart';
import 'package:flutter/material.dart';
import '../CustomWidgets/ReusableCard.dart';
import '../CustomWidgets/BottomButton.dart';
import '../CalculatorBrain.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.resultText, @required this.interpretation, @required this.bmiResult});
  final String resultText;
  final String interpretation;
  final String bmiResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                textAlign: TextAlign.center,
                style: kNumberTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                  Text(
                    resultText.toUpperCase(),
                    style: kGreenTextStyle,
                  ),
                  Text(
                    bmiResult.toString(),
                    style: kNumberTextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle:
            'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            }
          ),
        ],
      ),
    );
  }
}
