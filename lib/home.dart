import 'package:calculator/components/my_button.dart';
import 'package:calculator/constant.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> history = [];
  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.history),
              onPressed: () {
                Scaffold.of(context).openEndDrawer(); // open drawer
              },
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DrawerHeader(

              margin: EdgeInsets.zero,
              padding: EdgeInsets.all(16),
              child: Text(
                "History",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            // Clear button aligned to right
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton.icon(
                  onPressed: () {
                    setState(() {
                      history.clear();
                    });
                    Navigator.pop(context); // close drawer after clearing
                  },
                  icon: const Icon(Icons.delete, color: Colors.red),
                  label: const Text("Clear", style: TextStyle(color: Colors.red)),
                ),
              ),
            ),
            // History list
            Expanded(
              child: history.isEmpty
                  ? const Center(
                child: Text(
                  "No history yet",
                  style: TextStyle(color: Colors.white70),
                ),
              )
                  : ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                itemCount: history.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      history[index],
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
                separatorBuilder: (_, __) =>
                const Divider(color: Colors.white24),
              ),
            ),
          ],
        ),
      ),

      body:
      SafeArea(
        child:
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  width: double.infinity,
                  color: Colors.black, // background for calculator screen
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end, // align text to right
                    mainAxisAlignment: MainAxisAlignment.end,   // push content to bottom
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        reverse: true, // scroll from right side
                        child: Text(
                          userInput.toString(),
                          style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8), // space between input and answer
                      Text(
                        answer.toString(),
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white, // softer white
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                flex: 2,
               child:  Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MyButton(text: 'AC',onPressed: (){
                          userInput = '';
                          answer = '';
                          setState(() {

                          });
                        },),
                        MyButton(text: '+/-',onPressed: (){
                          userInput += '+/-';
                          setState(() {

                          });
                        }),
                        MyButton(text: '%',onPressed: (){
                          userInput += '%';
                          setState(() {

                          });
                        }),
                        MyButton(text: '/', color: Color(0xffff9800),onPressed: (){
                          userInput += '/';
                          setState(() {});


                        }),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MyButton(text: '7',onPressed: (){
                          userInput += '7';
                          setState(() {

                          });
                        },),
                        MyButton(text: '8',onPressed: (){
                         userInput += '8';
                         setState(() {

                         });

                        }),
                        MyButton(text: '9',onPressed: (){
                          userInput+= '9';
                          setState(() {

                          });
                        }),
                        MyButton(text: 'x', color: Color(0xffff9800),onPressed: (){
                          userInput+='*';
                          setState(() {

                          });

                        }),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MyButton(text: '4',onPressed: (){
                          userInput+='4';
                          setState(() {

                          });
                        },),
                        MyButton(text: '5',onPressed: (){
                          userInput+='5';
                          setState(() {

                          });
                        }),
                        MyButton(text: '6',onPressed: (){
                          userInput+='6';
                          setState(() {

                          });
                        }),
                        MyButton(text: '-', color: Color(0xffff9800),onPressed: (){
                          userInput+='-';
                          setState(() {

                          });

                        }),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MyButton(text: '1',onPressed: (){
                          userInput+='1';
                          setState(() {

                          });
                        },),
                        MyButton(text: '2',onPressed: (){
                          userInput+='2';
                          setState(() {

                          });
                        }),
                        MyButton(text: '3',onPressed: (){
                          userInput+='3';
                          setState(() {

                          });
                        }),
                        MyButton(text: '+', color: Color(0xffff9800),onPressed: (){
                          userInput+='+';
                          setState(() {

                          });
                        }),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MyButton(text: '0',onPressed: (){
                          userInput+='0';
                          setState(() {

                          });
                        },),
                        MyButton(text: '.',onPressed: (){
                          userInput+='.';
                          setState(() {

                          });
                        }),
                        MyButton(text: 'DEL',onPressed: (){
                          setState(() {
                            if (userInput.isNotEmpty) {
                              userInput = userInput.substring(0, userInput.length - 1);
                            }
                          });
                        }),
                        MyButton(text: '=', color: Color(0xffff9800),onPressed: (){
                          print(answer);
                          equalPress();


                        }),

                      ],
                    ),
                  ],
                )
              )
            ]
          ),
        ),
      ),
    );
  }

  void equalPress(){
    try {
      Parser p = Parser();
      Expression expression = p.parse(userInput);
      ContextModel contextModel = ContextModel();
      double eval = expression.evaluate(EvaluationType.REAL, contextModel);

      setState(() {
        if (eval == eval.toInt()) {
          answer = eval.toInt().toString();
        } else {
          answer = eval.toString();
        }
        history.add("$userInput = $answer");
      });
    } catch (e) {
      setState(() {
        answer = "Error";
      });
    }
  }
}

