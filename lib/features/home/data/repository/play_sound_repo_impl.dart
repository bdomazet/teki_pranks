import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failure.dart';
import '../../domain/repository/play_sound_repo.dart';
import '../datasource/play_local_sound_datasource.dart';

class PlaySoundRepoImpl implements PlaySoundRepo {
  PlaySoundRepoImpl({
    required this.playLocalSoundDatasource,
  });

  final PlayLocalSoundDatasource playLocalSoundDatasource;
  @override
  Future<Either<Failure, String>> playSound(String path) async {
    try {
      final String result =
          await playLocalSoundDatasource.playSound(soundPath: path);
      return right(result);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
