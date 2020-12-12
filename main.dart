import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        brightness: Brightness.dark,
        fontFamily: 'Verdana',
      ),

      home: MyHomePage(title: 'contact page homepage'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(

            title: Center(


              child:Text('My Info') ,
            )
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin:EdgeInsets.only(bottom: 20),
              child:CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/melo.jpg'),
                  ),

                ),

            Divider(
              indent: 30,
              endIndent: 30,

            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left:30, top: 20),
              child: Text('N A M E',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),


              ),


            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left:30, top: 20, bottom: 20),
              child: Text('Melih Doğan',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 50,
                  color: Colors.orange,
                ),


              ),


            ),
            Row(

              children: [
                Container(
                  padding: EdgeInsets.only(left:30),
                  child: Icon(
                    Icons.phone,

                  ),


                ),
                Container(
                  padding: EdgeInsets.only(left:10),

                  child: Text('+90 541 530 8726',
                    style: TextStyle(fontSize: 20),
                  ),

                )

              ],

            ),
            Row(

              children: [
                Container(
                  padding: EdgeInsets.only(left:30),
                  child: Icon(
                    Icons.mail,

                  ),


                ),
                Container(
                  padding: EdgeInsets.only(left:10),

                  child: Text('ahmetmelihdogan@yahoo.com',
                    style: TextStyle(fontSize: 18),
                  ),

                )

              ],

            ),




          ],
        ),


      ),
    );

  }
}