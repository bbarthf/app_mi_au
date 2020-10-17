import 'package:Miau/model/pet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'commom/appColor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

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
  List<Pet> list = [
    Pet(
      'Kiko',
      '17/10/2020',
      'São Paulo',
      'https://images.wunderstock.com/Three-Brown-Puppies_2BdilPhGnYDA.jpeg',
      'Laura',
      '',
      '(99) 99999-9999',
    ),
    Pet(
      'Leandro',
      '17/10/2020',
      'São Paulo',
      'https://img.ibxk.com.br/2014/06/06/06165614150388.jpg?w=1120&h=420&mode=crop&scale=both',
      'Laura',
      '',
      '(99) 99999-9999',
    )
  ];

  List<Widget> _createCards(List<Pet> l) {
    List<Widget> ret = [];

    list.forEach((element) {
      ret.add(card(element));
    });

    return ret;
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
          children: _createCards(list),
        ),
      ),
    );
  }
}

Widget card(Pet pet) {
  // card principal
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 340.0,
      height: 340.0,
      child: Column(
        children: [
          //linha
          Padding(
            // inserir as margens da linha do top
            padding: EdgeInsets.only(top: 20.0, left: 48.0, right: 48.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // brenda 15/10/2020
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start, horizontal
                  crossAxisAlignment: CrossAxisAlignment.start, //vertica
                  children: [
                    FlatButton(
                      onPressed: () {},
                      color: AppColors.secundary,
                      child: Text(
                        'ADOTAR',
                      ),
                    ),
                    Text(pet.name)
                  ],
                ),
                // 15/10/2020 - bolinha azul
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.secundary),
                  width: 40.0,
                  height: 40.0,
                ),
              ],
            ),
          ),

          //imagem
          Container(
            decoration: BoxDecoration(
              color: AppColors.cardSlide,
              image: DecorationImage(
                image: NetworkImage(
                  pet.imageUrl,
                ),
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
          Padding(
            padding: EdgeInsets.only(left: 48.0, right: 48.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      child: Text(
                        'Publicado hoje às 18:00',
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      child: Text(
                        'São Paulo',
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    listadeICones(),
                    listadeShare(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      // brenda 13/10/2020
      decoration: BoxDecoration(
        color: AppColors.cardSlide,
        borderRadius: BorderRadius.circular(12),
      ),
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
