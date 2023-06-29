import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E21),
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Reuse(
                  colour: Color(0xFF1D1E33),
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 80,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "MALE",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: Reuse(
                  colour: Color(0xFF1D1E33),
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.venus,
                        size: 80,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "FEMALE",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          const Expanded(
              child: Reuse(colour: Color(0xFF1D1E33), cardChild: Row())),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reuse(
                    colour: Color(0xFF1D1E33),
                    cardChild: Column(),
                  ),
                ),
                Expanded(
                  child: Reuse(
                    colour: Color(0xFF1D1E33),
                    cardChild: Column(),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
            decoration: BoxDecoration(
                color: const Color(0xFFEB1555),
                border: Border.all(),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
          ),
        ],
      ),
    );
  }
}

class Reuse extends StatelessWidget {
  const Reuse({super.key, required this.colour, required this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: colour,
          border: Border.all(),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: cardChild,
    );
  }
}
