import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final _con = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Midterm Exam '),
        backgroundColor: Colors.amber.shade700,
      ),


      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black26,
            boxShadow: [
              BoxShadow(
                color: Colors.black12..withOpacity(0.5),
                blurRadius: 5.0,
                offset: const Offset(1.0, 1.0),
                spreadRadius: 5.0,
              ),
            ],
          ),
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Temperature Converter',
                          style: TextStyle(
                            fontSize: 36.0,
                            color: Colors.white70,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50.0),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.7),
                      border: OutlineInputBorder(),
                      hintText: 'Enter a temperature value to convert'
                  ),
                  textAlign: TextAlign.center,
                  controller: _con,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(5.1),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber.shade600),
                  ),
                  onPressed: () {},
                  child: const Text('Celsius to Fahrenheit',
                      style: TextStyle(color: Colors.white)),
                ),

              ),
              Padding(
                padding: const EdgeInsets.all(5.1),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber.shade600),
                  ),
                  onPressed: () {},
                  child: const Text('Fahrenheit to Celsius',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.1),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber.shade600),
                  ),
                  onPressed: () {},
                  child: const Text('Kelvin to Celsius',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.1),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber.shade600),
                  ),
                  onPressed: () {},
                  child: const Text('Celsius to Kelvin',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.1),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber.shade600),
                  ),
                  onPressed: () {},
                  child: const Text('Fahrenheit ot Kelvin',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.1),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber.shade600),
                  ),
                  onPressed: () {},
                  child: const Text('Kelvin to Fahrenheit',
                      style: TextStyle(color: Colors.white)),
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}