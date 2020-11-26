
import 'package:Miau/carregamento.dart';
import 'package:Miau/dialogo.dart';
import 'package:Miau/login.dart';
import 'package:Miau/model/pet.dart';
import 'package:Miau/principal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'commom/appColor.dart';



void main() {
   runApp(MyApp());
   /*routes:{
     
     Carregamento.routeName: (context) => Carregamento(),
     LoginMiau.routeName: (context) => LoginMiau(),
     Principal.routeName: (context) => Principal(),
     Dialogo.routeName: (context) => Dialogo()
   }, */
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
       1,
      'Kiko',
      '17/10/2020',
      'São Paulo',
      'https://images.wunderstock.com/Three-Brown-Puppies_2BdilPhGnYDA.jpeg',
      'Brenda Barth',
      'https://scontent.fbjp1-1.fna.fbcdn.net/v/t1.0-9/81789904_2943828889048184_8353975943525564416_o.jpg?_nc_cat=101&ccb=2&_nc_sid=09cbfe&_nc_eui2=AeHoyC6SLqCmtEAbkgeRMExzqmKR-II3GZeqYpH4gjcZl11NqPThPguk9glsh90MdTi9ykOwFPWkieTMjaMn1GCi&_nc_ohc=g2U56kMPBoEAX8GDk6S&_nc_ht=scontent.fbjp1-1.fna&oh=0519385b2f286eda40bbe85095ecc86e&oe=5FC7832C',
      '(99) 99999-9999',
    ),
    Pet(
       2,
      'Leandro',
      '17/10/2020',
      'São Paulo',
      'https://s2.glbimg.com/5IEojOCGN6bgFV5L2K_RKB5dtvk=/e.glbimg.com/og/ed/f/original/2020/03/31/cat-4548812_960_720.jpg',
      'Rafael Fernandes',
      'https://scontent.fbjp1-1.fna.fbcdn.net/v/t1.0-9/49719622_2274360636182356_6239996871545192448_o.jpg?_nc_cat=109&ccb=2&_nc_sid=09cbfe&_nc_eui2=AeEKUolm6pQcm_ZxtazRfUySlgURl3UFFUmWBRGXdQUVSYyFLaWUQGSdnxcC8Tf0B1KnlrChiSWV0eYAgyYr0Asq&_nc_ohc=aQk4rKlTSo0AX96-mgP&_nc_ht=scontent.fbjp1-1.fna&oh=679ff55d41c5450f7c19911645e9fe7c&oe=5FC6F4B1',
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

  // barra de baixo 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // cor de fundo
         backgroundColor: AppColors.secundary,
        // aumenta o tamanho da toolbar 
      
        bottom:PreferredSize(
        preferredSize: Size(400,65),
        child: Padding(
           
          padding: EdgeInsets.only(bottom: 68.0,left: 69.0, right: 69.0),
          child: Container(
                decoration: BoxDecoration(
                color: AppColors.cardSlide,
                borderRadius: BorderRadius.circular(12),
              ),
          child: 
           // barrinha da app bar 
           Padding(
             // inserir as margens da linha do top
            padding: EdgeInsets.only(left:8.0),
             child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Padding(
                   padding: EdgeInsets.only(top: 8.0),
                   child: listadeLista(),
                 ),
                 // icone do app
                 Container(
                          decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: const DecorationImage(image: NetworkImage('https://scontent.fbjp1-1.fna.fbcdn.net/v/t1.0-9/123652073_3690627654368300_2410754137642726187_n.jpg?_nc_cat=101&ccb=2&_nc_sid=730e14&_nc_eui2=AeGPHJvhxn3GPea8E2xh9yId--CLUjhqvxT74ItSOGq_FBfSAs_-p2FjR5KR9MtEH1otKVd13Q9xfh4aVwfrU1PU&_nc_ohc=PuxscGgdzOkAX_7Bslj&_nc_ht=scontent.fbjp1-1.fna&oh=123dd6449b06365a49aee8f443f52800&oe=5FC7A23B'),fit: BoxFit.cover),   
                        ),
                     width: 40.0,
                     height:40.0,
                     ),
                 Padding(
                   padding:  EdgeInsets.only(top: 13.0),
                   child: Container(
                        child: Text(
                          "Pesquisar Pet",
                           textAlign: TextAlign.center,
                         // textAlign: TextAlign.left,
                         overflow: TextOverflow.ellipsis,
                        ),
                      ),
                 ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: listadesearch(),
                ), 
              ],
            ),
            
           ),
          
          width: 340.0,
          height: 45.0,
          ),
        ),
        )
      ),

      // abinha de baixo 
        bottomNavigationBar: BottomAppBar(
                                      child : Container(
                                            height:60.0,
                                            color: AppColors.secundary,    
                                      ),
                                 ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,                         
        floatingActionButton: FloatingActionButton(
           backgroundColor: AppColors.secundary,
           onPressed:() {
              print("Doar");
            },
           child: Icon(Icons.add),
           foregroundColor: AppColors.cardSlide,
         ), 
      
      body: Container(
        color: AppColors.backgroud,
        child:  FlatButton(
                     shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),

                     ),
                      onPressed: ( ) {
                        Navigator.push(
                                     context,
                                     MaterialPageRoute( 
                                     builder:(BuildContext context) =>Dialogo()
                                  )); 
                        

                      },
                      color: AppColors.secundary,
                      child: Text(
                        'ADOTAR',
                      ),
                      textColor: Colors.white
                ),
       /* child: ListView(
        children: _createCards(list),

        ), */

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
            padding: EdgeInsets.only(top: 10.0, left: 69.0, right: 69.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // brenda 15/10/2020
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start, horizontal
                  crossAxisAlignment: CrossAxisAlignment.start, //vertica
                  children: [
                    FlatButton(
                     shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),

                     ),
                      onPressed: ( ) {
                      /*   Navigator.push(
                                     context,
                                     MaterialPageRoute( 
                                     builder:(BuildContext context) =>Dialogo()
                                  )); */
                        

                      },
                      color: AppColors.secundary,
                      child: Text(
                        'ADOTAR',
                      ),
                      textColor: Colors.white
                    ),
                    Text(pet.name)
                  ],
                ),
                // 15/10/2020 - bolinha azul
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.secundary,
                          image: DecorationImage( image: NetworkImage( pet.ownerImage)),
                     ),
                      width: 45.0,
                      height:45.0,
                    ),
                    Text(pet.ownerName,
                         style: TextStyle(
                                decoration: TextDecoration.underline,
                         ),
                      )
                  ],
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
            padding: EdgeInsets.only(left: 69.0, right: 69.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start, //vertica
                  children: [
                    Container(
                      child: Text(
                        "Publicado às " + pet.publishingDate,
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      child: Text(
                        pet.city,
                        textAlign: TextAlign.right,
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
        color: Colors.lightBlueAccent,
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

Widget listadeLista() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: const <Widget>[
      Icon(
        Icons.list,
        color: Colors.grey,
        size: 24.0,
        semanticLabel: 'Text to announce in accessibility modes',
      ),
    ],
  );
}

Widget listadesearch() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: const <Widget>[
      Icon(
        Icons.search,
        color: Colors.grey,
        size: 24.0,
        semanticLabel: 'Text to announce in accessibility modes',
      ),
    ],
  );
}

Widget listadeFiltro() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: const <Widget>[
      Icon(
        Icons.filter_list,
        color: Colors.grey,
        size: 24.0,
        semanticLabel: 'Text to announce in accessibility modes',
      ),
    ],
  );
}

Widget listadeFavorite() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: const <Widget>[
      Icon(
        Icons.favorite_border,
        color: Colors.grey,
        size: 24.0,
        semanticLabel: 'Text to announce in accessibility modes',
      ),
    ],
  );
}

Widget listadecategoria() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: const <Widget>[
      Icon(
        Icons.grid_on,
        color: Colors.grey,
        size: 24.0,
        semanticLabel: 'Text to announce in accessibility modes',
      ),
    ],
  );
}