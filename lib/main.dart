import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main(){
  runApp(DrumMachine());

}

class DrumMachine extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home:Scaffold(
      backgroundColor: Colors.black38,
      body:DrumPage()
    )
  );

  }

}
class DrumPage extends StatelessWidget {
  final player = AudioCache();
  void sesiCal(String ses){
    player.play('$ses.wav');
  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children:<Widget> [
            Expanded(
              child: Row(
                children:<Widget> [
                  Expanded(
                    child: buildDrumPad('bongo', Colors.blue),
                  ),
                Expanded(child:
                  buildDrumPad('clap3',Colors.lime),
                  ),

                ],
              ),
            ),
            Expanded(
              child: Row(
                children:<Widget> [
                  Expanded(
                    child: buildDrumPad('crash',Colors.grey),
                  ),
                  Expanded(child:
                  buildDrumPad('ridebel',Colors.orange),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children:<Widget> [
                  Expanded(
                    child: buildDrumPad('clap1', Colors.lime),
                  ),
                  Expanded(child:
                  buildDrumPad('bongo',Colors.pink),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children:<Widget> [
                  Expanded(
                    child: buildDrumPad('clap2', Colors.purple),
                  ),
                  Expanded(child:
                  buildDrumPad('bongo',Colors.greenAccent),
                  )
                ],
              ),
            ),
          ],
        ),
      ),



    );
  }

  FlatButton buildDrumPad(String ses , Color renk) {
    return FlatButton(
                    padding:EdgeInsets.all(8),
                    onPressed: (){
                      sesiCal(ses);

                    },
                    child: Container(
                      color: renk,
                    ),
                  );
  }
}

