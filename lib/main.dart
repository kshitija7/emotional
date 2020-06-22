import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:relax/slider.dart';


void main() => runApp(Emotions());


class Emotions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Emotional Hygiene",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.blueAccent,

      ),
      home:Cards(),
    );
  }
}

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> with
TickerProviderStateMixin{
   


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Emotional Hygiene')),
      ),
      body: Center(
        
        
        child: new Column(children: <Widget>[

        
        Container(

          height:MediaQuery.of(context).size.height*0.8,
          child:TinderSwapCard (
            orientation:AmassOrientation.TOP,
            totalNum:5,
            stackNum: 4,
            maxWidth: MediaQuery.of(context).size.width*0.7,
            maxHeight:MediaQuery.of(context).size.height*0.8,
            minWidth: MediaQuery.of(context).size.width*0.6,
            minHeight:MediaQuery.of(context).size.width*0.6,
            
            
            cardBuilder: (context,index)=>Column(
              children: <Widget>[
                Card(
                  child:Container(
                    padding: EdgeInsets.all(10.0),
                    height: MediaQuery.of(context).size.height*0.4,
                    child:  Emotion(
                  )
                  )),
              ],
            )  
               
          
            )
        ),
        ],)

      ),
      );
    
  }
}













































