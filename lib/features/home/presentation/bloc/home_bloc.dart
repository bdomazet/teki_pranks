import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failure.dart';
import '../../domain/usecase/play_sound_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required PlaySoundUsecase playSoundUsecase})
      : _playSoundUsecase = playSoundUsecase,
        super(HomeInitial()) {
    on<PlaySoundEvent>(onPlaySoundEvent);
  }

  final PlaySoundUsecase _playSoundUsecase;

  FutureOr<void> onPlaySoundEvent(
      PlaySoundEvent event, Emitter<HomeState> emit) async {
    final Either<Failure, String> result =
        await _playSoundUsecase.call(event.soundPath);
    result.fold(
        (Failure failure) => emit(SoundNotPlayed(error: failure.message)),
        (String success) => '');
  }
}
