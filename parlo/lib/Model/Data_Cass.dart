import 'package:audioplayers/audioplayers.dart';

class model {
  final String? image;
  final String? textenglish;
  final String? texItliano;
  final audioPlayer = AudioPlayer();
  final String? audio;
  model({required this.image,required this.textenglish,required this.texItliano,required this.audio});
  Future<void> addAudio() async {
    await audioPlayer.play(AssetSource(audio??''));
  }
}
