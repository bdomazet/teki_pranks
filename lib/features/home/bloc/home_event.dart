part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class PlaySoundEvent extends HomeEvent {
  PlaySoundEvent(this.soundPath);
  final String soundPath;
}
