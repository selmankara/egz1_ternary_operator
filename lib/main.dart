import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              onPressed: () {
                setState(() {
                  seciliButon = 'SOL';
                });
                print('$seciliButon buton tıklandı');
              },
              child: Container(
                width: 100,
                height: 200,
                color:
                seciliButon == 'SOL' ? Colors.blueAccent : Colors.blueGrey,
                child:
                Text(seciliButon == 'SOL' ? 'AKTİF BUTON' : 'PASİF BUTON'),
              ),
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  seciliButon = 'SAĞ';
                });
                print('$seciliButon buton tıklandı');
              },
              child: Container(
                width: 100,
                height: 200,
                color:
                seciliButon == 'SAĞ' ? Colors.blueAccent : Colors.blueGrey,
                child:
                Text(seciliButon == 'SAĞ' ? 'AKTİF BUTON' : 'PASİF BUTON'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
