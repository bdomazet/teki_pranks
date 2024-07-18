part of 'home_bloc.dart';

@immutable
abstract class HomeState {
  const HomeState();
}

class HomeInitial extends HomeState {}

class SoundNotPlayed extends HomeState {
  const SoundNotPlayed({
    required this.error,
  });
  final String error;
}
