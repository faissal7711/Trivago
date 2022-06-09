// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Color purpleColor = Colors.deepOrange[100];
//Color purpleColor = Colors.teal;
Color purpleColor = Colors.cyan;
//Color purpleColor = Color(0xff29293F);
Color orangeColor = Color(0xffF0703A);
Color pinkColor = Colors.deepOrange;
Color white = Colors.white;
Color black45 = Colors.black45;

const KMainColor = Colors.teal;

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: Colors.white,
);

TextStyle whiteTextStyle = GoogleFonts.poppins(color: Colors.white);

FontWeight light = FontWeight.w300;
FontWeight reguler = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semibold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

//
//AudioPlayer player = AudioPlayer();
//AudioCache audioCache = AudioCache(prefix: "");
//PlayerState audioPlayerState = PlayerState.STOPPED;
//
//playMusic({@required String pathAudio}) async {
//  print(pathAudio);
////  audioCache.play(pathAudio);
//  if (audioPlayerState == PlayerState.PAUSED) {
//    player.resume();
//  } else {
////    String audioasset = "assets/audio/test.mp3";
////    String audioasset = "assets/audio/foo.m4a";
////    ByteData bytes =
////    await rootBundle.load(audioasset); //load sound from assets
////    Uint8List soundbytes =
////    bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
//    // to play the audio (player OR audioCache)
////    int result = await player.playBytes(soundbytes);
//      audioCache.play(pathAudio);
////      audioCache.play(audioasset);
////      if(result == 1){ //play success
////        print("Sound playing successful.");
////      }else{
////        print("Error while playing sound.");
////      }
//    // to repeat the audio
////      audioCache.loop(audioasset);
//  }
//  audioPlayerState = PlayerState.PLAYING;
////    final player = AudioPlayer();
////    await player.setUrl('assets/audio/exelant.mp3',isLocal: true);
////    await player.resume();
////    expect(popLastCall().method, 'setSourceUrl');
//
////     await audioPlayer.play(path);
////     await audioCache.play(path);
////    player.play();
//}
//
//pauseMusic() async {
////    await audioPlayer.pause();
//  audioPlayerState = PlayerState.PAUSED;
//  await player.pause();
//}
//
//stopMusic() async {
////    await audioPlayer.pause();
//  audioPlayerState = PlayerState.STOPPED;
//  await player.stop();
//}