import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(
        XylophoneApp()
);

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void playsound(int num){
      final assetsAudioPlayer = AssetsAudioPlayer();
      assetsAudioPlayer.open(Audio("assets/note$num.wav"),);
    }
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.stretch,
              children:[
                
                 Expanded(
                   child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.redAccent)
                    ),
                onPressed: () {
                    playsound(1);
                },
                child: Text(" "),
                   ),
                 ),
                 Expanded(
                   child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange)
                    ),
                onPressed: () {
                playsound(2);
                },
                child: Text(" "),
                   ),
                 ),
                 Expanded(
                   child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    ),
                onPressed: () {
                playsound(3);
                },
                child: Text(" "),
                   ),
                 ),
                 Expanded(
                   child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)
                    ),
                onPressed: () {
                    playsound(4);
                },
                child: Text(" "),
                   ),
                 ),
                 Expanded(
                   child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)
                    ),
                onPressed: () {
                    playsound(5);
                },
                child: Text(" "),
                   ),
                 ),
                 Expanded(
                   child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent)
                      
                    ),
                onPressed: () {
                    playsound(6);
                },
                child: Text(" "),
                   ),
                 ),
                 Expanded(
                   child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple)
                      
                    ),
                onPressed: () {
                    playsound(7);
                },
                child: Text(" "),
                   ),
                 ),
              ],
              
          ),
        ),
      ),
    );
  }
}
