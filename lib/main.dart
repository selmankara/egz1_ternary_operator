import 'package:flutter/material.dart';

void main() => runApp(TernaryEgzersizi());

class TernaryEgzersizi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String seciliButon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    seciliButon = 'ÜST';
                  });
                  print('$seciliButon buton tıklandı');
                },
                child: Container(
                  width: 300,
                  height: 100,
                  color: seciliButon == 'ÜST'
                      ? Colors.blueAccent
                      : Colors.blueGrey,
                  child: Center(
                    child: Text(
                      seciliButon == 'ÜST' ? 'AKTİF' : 'PASİF',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    seciliButon = 'ALT';
                  });
                  print('$seciliButon buton tıklandı');
                },
                child: Container(
                  width: 300,
                  height: 100,
                  color: seciliButon == 'ALT'
                      ? Colors.blueAccent
                      : Colors.blueGrey,
                  child: Center(
                    child: Text(
                      seciliButon == 'ALT' ? 'AKTİF' : 'PASİF',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    seciliButon = ''; /** Sıfırlama **/
                  });
                  print('Sıfırlama yapıldı');
                },
                child: Container(
                  width: 300,
                  height: 50,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'RESET',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
