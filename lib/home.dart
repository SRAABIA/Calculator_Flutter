import 'package:calculator/constant.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator',style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.shade100,
      ),

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const MyButton(text: '1',number: 50,),
              const MyButton(text: '2'),
            ]
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  final int? number;

  const MyButton({
    super.key,
    required this.text,
    this.number,

  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: grayColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              number != null ? number.toString() : text ?? "",
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                color: whiteColor,
            ),
            ),
          ),
        ),
    );
  }
}
