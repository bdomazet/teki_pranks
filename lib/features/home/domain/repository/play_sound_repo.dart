import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failure.dart';

abstract interface class PlaySoundRepo {
  Future<Either<Failure, String>> playSound(String path);
}
