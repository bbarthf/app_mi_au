import 'package:flutter/material.dart';

import 'commom/appColor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          color: AppColors.backgroud,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              card(),
            ],
          )

          // Center(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: <Widget>[
          //       Text(
          //         'You have pushed the button this many times:',
          //       ),
          //       Text(
          //         '$_counter',
          //         style: Theme.of(context).textTheme.headline4,
          //       ),
          //     ],
          //   ),
          // ),
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

Widget card() {
  return Container(
    color: AppColors.cardSlide,
    width: 340.0,
    height: 340.0,
    child: Column(
      children: [
        //linha
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  color: AppColors.secundary,
                  width: 40.0,
                  height: 40.0,
                ),
                Text("Oi Rapha")
              ],
            ),
            Column(
              children: [
                Container(
                  color: AppColors.secundary,
                  width: 40.0,
                  height: 40.0,
                ),
                Text("Oi Rapha")
              ],
            )
          ],
        ),

        //imagem
        Container(
          decoration: BoxDecoration(
            color: AppColors.cardSlide,
            image: const DecorationImage(
              image: NetworkImage(
                  'https://i.guim.co.uk/img/media/684c9d087dab923db1ce4057903f03293b07deac/205_132_1915_1150/master/1915.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=14a95b5026c1567b823629ba35c40aa0'),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              color: AppColors.cardSlide,
              width: 8,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          width: 320.0,
          height: 220.0,
        ),

        // baixo
        Row(
          children: [listadeICones(), listadeShare()],
        )
      ],
    ),
  );
}

Widget listadeShare() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: const <Widget>[
      Icon(
        Icons.share,
        color: Colors.pink,
        size: 24.0,
        semanticLabel: 'Text to announce in accessibility modes',
      ),
    ],
  );
}

Widget listadeICones() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: const <Widget>[
      Icon(
        Icons.favorite,
        color: Colors.pink,
        size: 24.0,
        semanticLabel: 'Text to announce in accessibility modes',
      ),
    ],
  );
}
