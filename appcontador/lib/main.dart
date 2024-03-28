import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APP Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 23, 83, 133)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Contador em Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  Color _backgroundColor = Colors.white;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = _backgroundColor == Colors.white ? Colors.grey : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      backgroundColor: _backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Text(
                'Você Apertou o Botão tantas vezes:',
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height:100), 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  tooltip: 'Diminuir',
                  child: const Icon(Icons.remove),
                  backgroundColor: Color.fromARGB(255, 158, 219, 243),
                ),
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Aumentar',
                  child: const Icon(Icons.add),
                  backgroundColor: Color.fromARGB(255, 158, 219, 243),
                ),
                FloatingActionButton(
                  onPressed: _changeBackgroundColor,
                  tooltip: 'Mudar Cor',
                  child: const Icon(Icons.color_lens),
                  backgroundColor: Color.fromARGB(255, 158, 219, 243),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
