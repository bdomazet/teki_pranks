import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(SplashScreenState()) {
    on<DisplayHomeScreenEvent>(onDisplayHomeScreenEvent);
    add(DisplayHomeScreenEvent());
  }

  FutureOr<void> onDisplayHomeScreenEvent(
      DisplayHomeScreenEvent event, Emitter<MainState> emit) async {
    await Future<void>.delayed(const Duration(seconds: 3));
    emit(HomeScreenState());
  }
}
