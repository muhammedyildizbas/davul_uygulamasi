import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main(){
  runApp(DrumMachine());

}

class DrumMachine extends StatelessWidget {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home:Scaffold(
      body: SafeArea(
        child:FlatButton(
          onPressed: (){
          player.play('bongo.wav');
          },
          child: Container(
          color: Colors.lightBlue,
          ),
        ),



      ),
    )
  );

  }

}
