import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'teki_pranks_event.dart';
part 'teki_pranks_state.dart';

class TekiPranksBloc extends Bloc<TekiPranksEvent, TekiPranksState> {
  TekiPranksBloc() : super(SplashScreenState()) {
    on<DisplayHomeScreenEvent>(onDisplayHomeScreenEvent);
    add(DisplayHomeScreenEvent());
  }

  FutureOr<void> onDisplayHomeScreenEvent(
      DisplayHomeScreenEvent event, Emitter<TekiPranksState> emit) async {
    await Future<void>.delayed(const Duration(seconds: 3));
    emit(HomeScreenState());
  }
}
