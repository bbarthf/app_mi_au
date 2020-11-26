import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'commom/appColor.dart';
import 'package:share/share.dart';



class Dialogo extends StatefulWidget {
  static const routeName ='Dialogo';
  @override
  _DialogoState createState() => _DialogoState();
}

class _DialogoState extends State<Dialogo> {
  @override
  // tela dialogo 
  Widget build(BuildContext context) {
  return  Scaffold(
    
    body: Container(
       width:  470.0,
       height: 550.0,
       color: AppColors.backgroud,
       alignment: Alignment.center,
       
       child: Column(
                     children:[
                          
                             Padding(
                              padding: EdgeInsets.only(top: 60.0),
                               child: Container (
                                    decoration: BoxDecoration(
                                       color: AppColors.cardSlide,
                                       borderRadius: BorderRadius.circular(12),
                                    ),
                                    width:  400.0,
                                    height: 250.0,
                                    alignment: Alignment.center,
                                    child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                  child: Text(
                                                    "Você gostou desse Pet?",
                                                    textAlign: TextAlign.center,
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize:20),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(top: 60.0),
                                                  child: Container(
                                                    child: Text(
                                                      "Deseja conversar com o responsável pelo PET?",
                                                      textAlign: TextAlign.center,
                                                      overflow: TextOverflow.ellipsis,
                                                      style: TextStyle(fontSize:15),
                                                      
                                                    ),
                                                  ),
                                                ),
                                              
                                            ],
                                )
                               
                          ),
                             ),
                        // dialogo
                        Padding(
                          padding: EdgeInsets.only(top: 60.0,left: 70,right: 70.0),
                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                                  // BOTÃO SIM 
                                  SizedBox(
                                       width: 120.0,
                                       height: 50.0,
                                      child: RaisedButton(
                                            shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            side: BorderSide(color: Colors.white)

                                            ),
                                              onPressed: ( ) {
                                                Share.share("Olá =) Sou brenda e gostaria de mais informações o seu PET. Agradeço pela atenção!");
                                                
                                              },
                                              color: Colors.green[300],
                                              child: Text(
                                                'SIM',
                                                style: TextStyle(fontWeight: FontWeight.bold,fontSize:20),
                                              ),
                                              textColor: Colors.black
                                              
                                            ),  
                                     ), 
                                 
                                    // BOTÃO NÃO
                                    SizedBox(
                                       width: 120.0,
                                       height: 50.0,
                                      child: RaisedButton(
                                              shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              side: BorderSide(color: Colors.white)
   
                                      ),
                                        onPressed: ( ) {
                                        /*   Navigator.push(
                                                      context,
                                                      MaterialPageRoute( 
                                                      builder:(BuildContext context) =>Dialogo()
                                                    )); */
                                          

                                        },
                                        color: Colors.red[700],
                                        elevation: 200.0,
                                        child: Text(
                                          'NÃO',
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize:20),
                                        ),
                                        textColor: Colors.black
                                      ),
                                    )
 
                              ]
                           ),
                        )
                        ],       
                 ),  
                    
             )
            
         );   
  }
}