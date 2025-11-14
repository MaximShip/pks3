import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Практика 4 Шипилов',
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void incrementLongPress() {
    setState(() {
      counter += 10;
    });
  }

  void reset() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Практика 4 Шипилов'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Значение счётчика: $counter',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Container(
              width: screenWidth * 0.9,
              color: Colors.green,
              padding: EdgeInsets.symmetric(vertical: 8),
              child: ElevatedButton(
                onPressed: increment,
                onLongPress: incrementLongPress,
                child: Text('Увеличить'),
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: screenWidth * 0.9,
              color: Colors.red,
              padding: EdgeInsets.symmetric(vertical: 8),
              child: ElevatedButton(
                onPressed: reset,
                child: Text('Сбросить'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
