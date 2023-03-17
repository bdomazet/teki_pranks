import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teki_pranks/features/main/widget/teki_pranks.dart';

import 'features/home/bloc/home_bloc.dart';
import 'features/main/bloc/teki_pranks_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Paint.enableDithering = true;
  await SystemChrome.setPreferredOrientations(
    <DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ],
  );
  AudioPlayer.global.setGlobalAudioContext(const AudioContext());
  runApp(MultiBlocProvider(
    providers: <BlocProvider<dynamic>>[
      BlocProvider<TekiPranksBloc>(
        create: (BuildContext context) => TekiPranksBloc(),
      ),
      BlocProvider<HomeBloc>(
        create: (BuildContext context) => HomeBloc(),
      )
    ],
    child: const TekiPranks(),
  ));
}
