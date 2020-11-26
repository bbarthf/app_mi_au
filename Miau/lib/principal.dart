import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'commom/appColor.dart';
import 'model/pet.dart';

class Principal extends StatefulWidget {
   static const routeName ='Principal';

  String get title => null;
  @override
  _PrincipalState createState() => _PrincipalState();

}

class _PrincipalState extends State<Principal> { 
  @override
  Widget build(BuildContext context) {

 List<Pet> list = [
    Pet(
       1,
      'Kiko',
      '17/10/2020',
      'São Paulo',
      'https://images.wunderstock.com/Three-Brown-Puppies_2BdilPhGnYDA.jpeg',
      'Brenda Barth',
      '',
      '(99) 99999-9999',
    ),
    Pet(
       2,
      'Leandro',
      '17/10/2020',
      'São Paulo',
      'https://scontent.fbjp1-1.fna.fbcdn.net/v/t1.0-9/49719622_2274360636182356_6239996871545192448_o.jpg?_nc_cat=109&ccb=2&_nc_sid=09cbfe&_nc_eui2=AeEKUolm6pQcm_ZxtazRfUySlgURl3UFFUmWBRGXdQUVSYyFLaWUQGSdnxcC8Tf0B1KnlrChiSWV0eYAgyYr0Asq&_nc_ohc=aQk4rKlTSo0AX96-mgP&_nc_ht=scontent.fbjp1-1.fna&oh=679ff55d41c5450f7c19911645e9fe7c&oe=5FC6F4B1',
      'Rafael Fernandes',
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