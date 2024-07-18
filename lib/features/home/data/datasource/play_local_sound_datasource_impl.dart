import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

import 'play_local_sound_datasource.dart';

class PlayLocalSoundDatasourceImpl implements PlayLocalSoundDatasource {
  PlayLocalSoundDatasourceImpl({
    required this.audioPlayer,
  });

  final AudioPlayer audioPlayer;

  @override
  Future<String> playSound({required String soundPath}) async {
    try {
      await audioPlayer.stop();
      await audioPlayer.play(
        AssetSource(soundPath),
      );
      return 'Sound played!';
    } on PlatformException catch (e) {
      throw Exception(e);
    } catch (e) {
      throw Exception(e);
    }
  }
}
