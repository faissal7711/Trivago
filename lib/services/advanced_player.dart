//// ignore_for_file: missing_return, sdk_version_ui_as_code
//
//import 'dart:typed_data';
//
//import 'package:audioplayers/audioplayers.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:provider/provider.dart';
//
//class Advanced extends StatefulWidget {
//  final AudioPlayer advancedPlayer;
//
//  const Advanced({Key key, @required this.advancedPlayer}) : super(key: key);
//
//  @override
//  _AdvancedState createState() => _AdvancedState();
//}
//
//class _AdvancedState extends State<Advanced> {
//  bool seekDone;
//
//  @override
//  void initState() {
////    widget.advancedPlayer.onSeekComplete
////        .listen((event) => setState(() => seekDone = true));
//    super.initState();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    final audioPosition = Provider.of<Duration>(context);
//    return SingleChildScrollView(
//      child: Column(
//        children: [
////          Column(
////            children: [
////              const Text('Source Url'),
//////              Row(
//////                children: [
//////                  Btn(
//////                    txt: 'Audio 1',
//////                    onPressed: () => widget.advancedPlayer.setUrl(kUrl1),
//////                  ),
//////                  Btn(
//////                    txt: 'Audio 2',
//////                    onPressed: () => widget.advancedPlayer.setUrl(kUrl2),
//////                  ),
//////                  Btn(
//////                    txt: 'Stream',
//////                    onPressed: () => widget.advancedPlayer.setUrl(kUrl3),
//////                  ),
//////                ],
//////                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//////              ),
////            ],
////          ),
////          Column(
////            children: [
////              const Text('Release Mode'),
//////              Row(
//////                children: [
//////                  Btn(
//////                    txt: 'STOP',
//////                    onPressed: () =>
//////                        widget.advancedPlayer.setReleaseMode(ReleaseMode.STOP),
//////                  ),
//////                  Btn(
//////                    txt: 'LOOP',
//////                    onPressed: () =>
//////                        widget.advancedPlayer.setReleaseMode(ReleaseMode.LOOP),
//////                  ),
//////                  Btn(
//////                    txt: 'RELEASE',
//////                    onPressed: () => widget.advancedPlayer
//////                        .setReleaseMode(ReleaseMode.RELEASE),
//////                  ),
//////                ],
//////                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//////              ),
////            ],
////          ),
////          Column(
////            children: [
////              const Text('Volume'),
//////              Row(
//////                children: [0.0, 0.3, 0.5, 1.0, 1.1, 2.0].map((e) {
//////                  return Btn(
//////                    txt: e.toString(),
//////                    onPressed: () => widget.advancedPlayer.setVolume(e),
//////                  );
//////                }).toList(),
//////                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//////              ),
////            ],
////          ),
//          //control
//          Column(
//            children: [
//              const Text('Control'),
//              Row(
//                children: [
//                  Btn(
//                    txt: 'resume',
//                    onPressed: () => widget.advancedPlayer.resume(),
//                  ),
//                  Btn(
//                    txt: 'pause',
//                    onPressed: () => widget.advancedPlayer.pause(),
//                  ),
//                  Btn(
//                    txt: 'play',
//                    onPressed: () async {
//
//                      AudioCache audioCache = AudioCache(prefix: "");
////    String audioasset = "assets/audio/test.mp3";
//    String audioasset = "assets/audio/foo.m4a";
//    ByteData bytes =
//    await rootBundle.load(audioasset); //load sound from assets
//    Uint8List soundbytes =
//    bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
//                    //   to play the audio (player OR audioCache)
////    int result = await widget.advancedPlayer.playBytes(soundbytes);
//                  //    audioCache.play(pathAudio);
////      audioCache.play(audioasset);
////      if(result == 1){ //play success
////        print("Sound playing successful.");
////      }else{
////        print("Error while playing sound.");
////      }
////                      return widget.advancedPlayer.playBytes(soundbytes);
//                    },
//                  ),
//                  Btn(
//                    txt: 'stop',
//                    onPressed: () => widget.advancedPlayer.stop(),
//                  ),
//                  Btn(
//                    txt: 'release',
//                    onPressed: () => widget.advancedPlayer.release(),
//                  ),
//                ],
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//              ),
//            ],
//          ),
//          //control
//
////          Column(
////            children: [
////              const Text('Seek in milliseconds'),
//////              Row(
//////                children: [
//////                  Btn(
//////                    txt: '100ms',
//////                    onPressed: () {
//////                      widget.advancedPlayer.seek(
//////                        Duration(
//////                          milliseconds: audioPosition.inMilliseconds + 100,
//////                        ),
//////                      );
//////                      setState(() => seekDone = false);
//////                    },
//////                  ),
//////                  Btn(
//////                    txt: '500ms',
//////                    onPressed: () {
//////                      widget.advancedPlayer.seek(
//////                        Duration(
//////                          milliseconds: audioPosition.inMilliseconds + 500,
//////                        ),
//////                      );
//////                      setState(() => seekDone = false);
//////                    },
//////                  ),
//////                  Btn(
//////                    txt: '1s',
//////                    onPressed: () {
//////                      widget.advancedPlayer.seek(
//////                        Duration(seconds: audioPosition.inSeconds + 1),
//////                      );
//////                      setState(() => seekDone = false);
//////                    },
//////                  ),
//////                  Btn(
//////                    txt: '1.5s',
//////                    onPressed: () {
//////                      widget.advancedPlayer.seek(
//////                        Duration(
//////                          milliseconds: audioPosition.inMilliseconds + 1500,
//////                        ),
//////                      );
//////                      setState(() => seekDone = false);
//////                    },
//////                  ),
//////                ],
//////                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//////              ),
////            ],
////          ),
////          Column(
////            children: [
////              const Text('Rate'),
////              Row(
////                children: [0.5, 1.0, 1.5, 2.0, 5.0].map((e) {
////                  return Btn(
////                    txt: e.toString(),
////                    onPressed: () {
////                      widget.advancedPlayer.setPlaybackRate(e);
////                    },
////                  );
////                }).toList(),
////                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
////              ),
////            ],
////          ),
////          Text('Audio Position: $audioPosition'),
////          if (seekDone != null) Text(seekDone ? 'Seek Done' : 'Seeking...'),
//        ],
//      ),
//    );
//  }
//}
//
//Btn({String txt, Future<int> Function() onPressed}) {
//  return RaisedButton(child: Text(txt),onPressed: onPressed,);
//}