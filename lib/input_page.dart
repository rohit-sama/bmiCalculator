import 'package:flutter/material.dart';

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
      body:  const Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: Reuse(colour: Color(0xFF1D1E33),)),
                Expanded(child: Reuse(colour: Color(0xFF1D1E33),)),
              ],
            ),
          ),
          Expanded(child: Reuse(colour: Color(0xFF1D1E33),)),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reuse(colour: Color(0xFF1D1E33),),
                ),
                Expanded(
                  child: Reuse(colour: Color(0xFF1D1E33),),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Reuse extends StatelessWidget {

  const Reuse({super.key, required this.colour});
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color:  colour,
          border: Border.all(),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
    );
  }
}
