import 'package:audioplayers/audioplayers.dart';
import 'package:get_it/get_it.dart';

import 'features/home/data/datasource/play_local_sound_datasource.dart';
import 'features/home/data/datasource/play_local_sound_datasource_impl.dart';
import 'features/home/data/repository/play_sound_repo_impl.dart';
import 'features/home/domain/repository/play_sound_repo.dart';
import 'features/home/domain/usecase/play_sound_usecase.dart';
import 'features/home/presentation/bloc/home_bloc.dart';
import 'features/onboarding/main/presentation/bloc/teki_pranks_bloc.dart';

final GetIt serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  serviceLocator.registerFactory(
    () => AudioPlayer(),
  );
  serviceLocator
    ..registerLazySingleton(
      () => TekiPranksBloc(),
    )
    ..registerLazySingleton(
      () => HomeBloc(
        playSoundUsecase: serviceLocator(),
      ),
    );
  serviceLocator
    ..registerFactory<PlayLocalSoundDatasource>(
      () => PlayLocalSoundDatasourceImpl(
        audioPlayer: serviceLocator(),
      ),
    )
    ..registerFactory<PlaySoundRepo>(
      () => PlaySoundRepoImpl(
        playLocalSoundDatasource: serviceLocator(),
      ),
    )
    ..registerFactory(
      () => PlaySoundUsecase(
        playSoundRepo: serviceLocator(),
      ),
    );
}
