import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  void CounterIncrement(){
    setState(() {
      counter++;
    });
  }
  void CounterDecrement(){
    setState(() {
      counter--;
    });
  }
  void CounterZero(){
    setState(() {
      counter = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Page',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple[300],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Siz duwma basdynyz",style: TextStyle(fontSize: 30.0),),
            Text(counter.toString(),
            style: TextStyle(fontSize: 40.0),),
            SizedBox(
                width: 200,
                height: 60,
                child: ElevatedButton(
                    onPressed:CounterIncrement,
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    child: const Icon(Icons.add))),
            SizedBox(
              width: 200,
              height: 60,
              child: ElevatedButton(
                  onPressed: CounterDecrement,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Icon(Icons.remove)),
            ),
            ElevatedButton(
                onPressed: CounterZero,
                child: const Icon(Icons.equalizer))
          ],
        ),
      ),
    );
  }
}
