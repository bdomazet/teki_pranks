import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<PlaySoundEvent>(onPlaySoundEvent);
  }

  FutureOr<void> onPlaySoundEvent(
      PlaySoundEvent event, Emitter<HomeState> emit) async {
    await AudioPlayer().play(
      AssetSource(event.soundPath),
    );
  }
}
