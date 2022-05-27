import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Kegiatan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '1461900089 - M. Taufan Ma\'ruf - Sore'),
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  bool pencet = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'https://images.unsplash.com/photo-1637311859464-5021233b7da5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80',
              height: 200,
            ),
            SizedBox(
              height: 50,
            ),
            Text('Instagram : @taufanonymous', style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 50,
            ),
            IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {},
              color: (pencet == false) ? Colors.orange : Colors.grey,
              iconSize: 50,
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  pencet = !pencet;
                });
              },
              child: Text('ganti Warna'),
            ),
          ],
        ),
      ),
    );
  }
}
