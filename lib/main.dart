import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_widgets/background_gradient.dart';
import 'features/home/bloc/home_bloc.dart';
import 'features/home/home_screen.dart';
import 'features/main/main_bloc.dart';
import 'features/splash/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Paint.enableDithering = true;
  SystemChrome.setPreferredOrientations(
    <DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ],
  );
  AudioPlayer.global.setGlobalAudioContext(const AudioContext());
  runApp(MultiBlocProvider(
    providers: <BlocProvider<dynamic>>[
      BlocProvider<MainBloc>(
        create: (BuildContext context) => MainBloc(),
      ),
      BlocProvider<HomeBloc>(
        create: (BuildContext context) => HomeBloc(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocConsumer<MainBloc, MainState>(
        listener: (BuildContext context, MainState state) {},
        builder: (BuildContext context, MainState state) {
          if (state is SplashScreenState) {
            return const SplashScreen();
          } else if (state is HomeScreenState) {
            return const HomeScreen();
          } else {
            return const BackgroundGradient();
          }
        },
      ),
    );
  }
}
