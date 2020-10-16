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
      home: MyHomePage(title: 'Bem-Vindo MIAU'),
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

  // card principal 
  return Container(

    width: 340.0,
    height: 340.0,
    child: Column(
      children: [
        //linha
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          // brenda 15/10/2020 
            Column(
              children: [
                  FlatButton(
                  onPressed: (){},
                  color: AppColors.secundary,
                  child: Text('ADOTAR')
                     
                  ),
              ],
            ),
              Column(
              children: [
              Text("Kiko,Leandro,Bruno")
              ],
            ),
            // 15/10/2020 - bolinha azul
            Container(
                 decoration :BoxDecoration(
                                          shape:BoxShape.circle, color: AppColors.secundary),
                  width: 40.0,
                  height: 40.0,
            ),

          ],
        ),

        //imagem
        Container(
          decoration: BoxDecoration(
            color: AppColors.cardSlide,
            image: const DecorationImage(
              image: NetworkImage(
              'https://images.wunderstock.com/Three-Brown-Puppies_2BdilPhGnYDA.jpeg'),
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
      // brenda 13/10/2020
        // baixo
        Row(
        textDirection: TextDirection.rtl,  
        children:[
        listadeICones(), listadeShare(),
        Column(
             children: [
                Container(
                      child: Text('Publicado hoje às 18:00', textAlign: TextAlign.left,
                               overflow: TextOverflow.ellipsis),

                ),
                Container(
                      child: Text('São Paulo', textAlign: TextAlign.left,
                               overflow: TextOverflow.ellipsis),

                ),
             ]
         ),
          ]
        ),

      ],
    ),
     // brenda 13/10/2020 
     decoration: BoxDecoration(
     color: AppColors.cardSlide,
     borderRadius: BorderRadius.circular(12),

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
