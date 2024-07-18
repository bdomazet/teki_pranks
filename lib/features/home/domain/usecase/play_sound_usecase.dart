import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repository/play_sound_repo.dart';

class PlaySoundUsecase implements UseCase<String, String> {
  PlaySoundUsecase({
    required this.playSoundRepo,
  });

  final PlaySoundRepo playSoundRepo;

  @override
  Future<Either<Failure, String>> call(String params) async {
    final Either<Failure, String> result =
        await playSoundRepo.playSound(params);
    return result;
  }
}
